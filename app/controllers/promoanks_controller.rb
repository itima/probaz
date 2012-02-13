class PromoanksController < ApplicationController

  layout "inner_person"

  # GET /promoanks
  # GET /promoanks.xml
  def index
  end

  def moderateank
    setwsadmin
    checkauth
    @ank=Promoank.find(params[:id])
    if params[:ok] == '1'
      @ank.moderate=true
    else
      @ank.rejectmsg=params[:rejectmsg]
      @ank.reject=true
    end

    @ank.save
    redirect_to(adminmain_path_url)
  end
  def sendtoank
    setwspromo
    checkid(params[:id].to_i)

    @ank=Promoank.find(params[:id])

    # @str='http://'+request.env['HTTP_HOST']
    @str=avtoactive_path_url
    @str=@str+"?email="+@ank.email+"&pass="+@ank.pass+"&hash="+Base64.encode64s(@ank.updated_at.to_s+@ank.created_at.to_s).to_s
    @str=@str.chop
    @str=@str.chop
    # отправка сообщения со страницой активации анкеты
    @email=Usermailer.create_contact(@ank.fio.to_s+" <"+@ank.email.to_s+">",@str,@ank.fio)
    Usermailer.deliver(@email)
    #render(:text => "<pre>" + @email.encoded+"</pre>")
    redirect_to(promomain_path_url)
  end

  def avtoactive

    @ank=Promoank.find_by_email_and_pass(params[:email].to_s.downcase,params[:pass])
    if @ank != nil
      @hash=Base64.decode64(params[:hash].to_s+"==")
      if @hash==(@ank.updated_at.to_s+@ank.created_at.to_s)

        @ank.checkemail=true
        @ank.save
        session[:user_id]=@ank.email
        session[:group]= "promo"
        session[:pass] = @ank.pass
        @loger=Loger.new
        @loger.objid=@ank.id
        @loger.objtype="promo"
        @loger.accin=true
        @loger.save
        redirect_to(promomain_path_url)
      else
        redirect_to(main_path_url)
      end
    else
      redirect_to(main_path_url)
    end
  end

  def activate
    setwspromo
    checkid(params[:id].to_i)
    @promoank = Promoank.find(params[:id])
    if @promoank.active
      @promoank.active =false
    else
      @promoank.active =true
    end
    @promoank.save
    redirect_to(promomain_path_url)
  end

  # GET /promoanks/1
  # GET /promoanks/1.xml
  def show
    setwsadmin
    checkauth
    @rejid=params[:rejectid]
    @ank = Promoank.find(params[:id])
    @anktogroups=Anktogroup.find_all_by_promoank_id(@ank.id)
    @anktolangs=Anktolang.find_all_by_promoank_id(@ank.id)
    @selanks=Selank.find_all_by_promoank_id_and_payed(@ank.id,false)
    @payanks=Selank.find_all_by_promoank_id_and_payed(@ank.id,true)
    if @ank.lname.length > 3 
      @lname=@ank.lname#@ank.lname.to_s+@ank.lname.to_s
      @anks=Promoank.find(:all,:conditions => "lname LIKE '%"+@lname+"%' and id != "+@ank.id.to_s)
    else
      if @ank.lname.length > 0
        @anks=Promoank.find(:all,:conditions => "lname LIKE '%"+@ank.lname.to_s+"%' and id != "+@ank.id.to_s)
      else
        @anks=nil
      end
    end unless @ank.lname.nil?
    if (@ank.files != nil) and (@ank.files != "")
      @files = @ank.files.split(/,/)
    else
      @files=nil
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ank }
    end
  end

  # GET /promoanks/new
  # GET /promoanks/new.xml
  def new
  end

  # GET /promoanks/1/edit
  def edit
    setwspromo
    checkid(params[:id].to_i)
    @promoank = Promoank.find(params[:id]) # Promoank.find_by_email(session[:user_id])
  end

  def files
    setwspromo
    checkid(params[:id].to_i)

    if request.post?

      @ank=Promoank.find(params[:id])
      @par=params[:par]
      @ok = true
      case params[:act]
      when "del"
        @file = @par.split(/&/)[1].to_s
        File.delete(RAILS_ROOT+'/public/'+@file)
        @files = @ank.files.gsub @par,""
        if @files[0].to_i.chr == ","
          @files=@files.insert 1,","
        else
          if @files[@files.size-1].to_i.chr == ","
            @files=@files.insert @files.size-1,","
          else
            @files = @files.gsub ",,",","
          end
        end
        @files = @files.gsub ",,",""
      when "add"
        @files = @ank.files
        if @files == nil
          @files=""
        end
        @dt=DateTime.now
        @fname=params[:fname]
      
        @file=File.basename(@par.original_path)
        @fsize=@par.size
        @ext=File.extname(@file)
        @test=@fname.delete " &,"
        if (@test != "") and (@ext != "") and (@fsize <512001)
          @fname=@fname.delete "&,"
          @filename=@ank.id.to_s+'_'+@dt.day.to_s+'_'+@dt.month.to_s+'_'+@dt.year.to_s+'_'+@dt.hour.to_s+'_'+@dt.min.to_s+'_'+@dt.sec.to_s+@ext
          if @files != ""
            @files = @files+','+@fname+'&'+'files/img/ankets/'+@filename
          else
            @files = @fname+'&'+'files/img/ankets/'+@filename
          end
          f=File.new(RAILS_ROOT+'/public/files/img/ankets/'+@filename, "wb") #wb вроде только для windows
          f.write(@par.read)
          f.close
        else
          @ok=false
        end
      end
      if @ok
        @ank.files=@files
        @ank.moderate=false
        @ank.reject=false
        @ank.rejectmsg=''
        @ank.save
        Selank.destroy_all(:promoank_id => @ank.id,:payed => false)
      end
      if @ank.files != nil
        @files = @ank.files.split(/,/)
      else
        @files=nil
      end

    else
      @ank=Promoank.find(params[:id])
      if @ank.files != nil
        @files = @ank.files.split(/,/)
      else
        @files=nil
      end
    end
  end


  # POST /promoanks
  # POST /promoanks.xml
  def create
    @promoank = Promoank.new(params[:promoank])

    respond_to do |format|
      if @promoank.save
        flash[:notice] = 'Promoank was successfully created.'
        format.html { redirect_to(@promoank) }
        format.xml  { render :xml => @promoank, :status => :created, :location => @promoank }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @promoank.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /promoanks/1
  # PUT /promoanks/1.xml
  def update
    setwspromo
    checkid(params[:id].to_i)
    @promoank = Promoank.find(params[:id])

    respond_to do |format|
      if @promoank.update_attributes(params[:promoank])
        @promoank.moderate=false
        @promoank.reject=false
        @promoank.rejectmsg=''
        @promoank.save
        Selank.destroy_all(:promoank_id => @promoank.id,:payed => false)

        flash[:notice] = 'Promoank was successfully updated.'
        format.html { redirect_to(promomain_path_url (:page => 1)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @promoank.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /promoanks/1
  # DELETE /promoanks/1.xml
  def destroy
    setwsadmin
    checkauth
    @promoank = Promoank.find(params[:id])
    Anktogroup.destroy_all(:promoank_id => @promoank.id)
    Anktolang.destroy_all(:promoank_id => @promoank.id)
    @promoank.destroy

    respond_to do |format|
      format.html { redirect_to(adminmain_path_url) }
      format.xml  { head :ok }
    end
  end
end
