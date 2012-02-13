class FirmsController < ApplicationController
layout "inner_firm"

  # GET /firms
  # GET /firms.xml
  def index
  end
 def setpay
setwsadmin
checkauth
 @firm=Firm.find(params[:id])
 @firm.acount=@firm.acount+params[:pay].to_d
 @firm.save
 redirect_to(adminmain_path_url(:page => 3))
 end
  def moderatefirm
 setwsadmin
 checkauth
 @firm=Firm.find(params[:id])
 @firm.moderate=true
 @firm.save
 redirect_to(adminmain_path_url(:page => 2))
 end
 def sendtofirm
 setwsfirm
 checkid(params[:id].to_i)

 @firm=Firm.find(params[:id])
# @str='http://'+request.env['HTTP_HOST']
 @str=avtoactivefirm_path_url
 @str=@str+"?email="+@firm.email+"&pass="+@firm.pass+"&hash="+Base64.encode64s(@firm.updated_at.to_s+@firm.created_at.to_s).to_s
 @str=@str.chop
 @str=@str.chop
 # отправка сообщения со страницой активации анкеты
  @email=Usermailer.create_contact(@firm.name.to_s+" <"+@firm.email.to_s+">",@str,@firm.name)
 Usermailer.deliver(@email)
 redirect_to(firmmain_path_url)
 end

 def avtoactivefirm
 
 @firm=Firm.find_by_email_and_pass(params[:email].to_s.downcase,params[:pass])
 if @firm != nil
   @hash=Base64.decode64(params[:hash].to_s+"==")
   if @hash==(@firm.updated_at.to_s+@firm.created_at.to_s)
   
   @firm.checkemail=true
   @firm.save
  session[:user_id]=@firm.email
  session[:group]= "firm"
  session[:pass] = @firm.pass
           @loger=Loger.new
         @loger.objid=@firm.id
         @loger.objtype="firm"
         @loger.accin=true
         @loger.save
 redirect_to(firmmain_path_url)
   else
   redirect_to(main_path_url)
   end
 else
 redirect_to(main_path_url)
 end
 end
 def activate
  setwsfirm
 checkid(params[:id].to_i)
  @firm = Firm.find(params[:id])
  if @firm.active
   @firm.active =false
  else
    @firm.active =true
  end
  @firm.save
  redirect_to(firmmain_path_url)
 end
  # GET /firms/1
  # GET /firms/1.xml
  def show
   setwsadmin
   checkauth
    @firm = Firm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @firm }
    end
  end

  # GET /firms/new
  # GET /firms/new.xml
  def new
  end

  # GET /firms/1/edit
  def edit
	setwsfirm
 	checkid(params[:id].to_i)
    @firm = Firm.find(params[:id])
  end

  # POST /firms
  # POST /firms.xml
  def create
    @firm = Firm.new(params[:firm])

    respond_to do |format|
      if @firm.save
        flash[:notice] = 'Firm was successfully created.'
        format.html { redirect_to(@firm) }
        format.xml  { render :xml => @firm, :status => :created, :location => @firm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @firm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /firms/1
  # PUT /firms/1.xml
  def update
     setwsfirm
     checkid(params[:id].to_i)
    @firm = Firm.find(params[:id])

    respond_to do |format|
      if @firm.update_attributes(params[:firm])
        flash[:notice] = 'Firm was successfully updated.'
        format.html { redirect_to(firmmain_path_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @firm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /firms/1
  # DELETE /firms/1.xml
  def destroy
    setwsadmin
    checkauth
    @firm = Firm.find(params[:id])
    Selank.destroy_all(:firm_id => @firm.id)
    @firm.destroy

    respond_to do |format|
      format.html { redirect_to(adminmain_path_url(:page => 2)) }
      format.xml  { head :ok }
    end
  end
end
