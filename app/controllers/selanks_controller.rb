class SelanksController < ApplicationController

layout "inner_firm"
  # GET /selanks
  # GET /selanks.xml
  def index
  end

  # GET /selanks/1
  # GET /selanks/1.xml
  def show
    setwsfirm
    @page=params[:page]
    if @page == nil
      @page='0'
    end
    @selank = Selank.find(params[:id])
    checkid(@selank.firm_id)
    @ank=@selank.promoank

    @anktogroups=Anktogroup.find_all_by_promoank_id(@ank.id)
    @anktolangs=Anktolang.find_all_by_promoank_id(@ank.id)
     if (@ank.files != nil) and (@ank.files != "")
    @files = @ank.files.split(/,/)
  else
    @files=nil
  end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @selank }
    end
  end

  # GET /selanks/new
  # GET /selanks/new.xml
  def new
  end

  # GET /selanks/1/edit
  def edit
  end

  # POST /selanks
  # POST /selanks.xml
  def create
    setwsfirm
    checkauth
    @selank = Selank.new(params[:selank])

    respond_to do |format|
      if @selank.save
        flash[:notice] = 'Selank was successfully created.'
        format.html { redirect_to(@selank) }
        format.xml  { render :xml => @selank, :status => :created, :location => @selank }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @selank.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /selanks/1
  # PUT /selanks/1.xml
  def update
    setwsfirm
    checkauth
    @selank = Selank.find(params[:id])

    respond_to do |format|
      if @selank.update_attributes(params[:selank])
        flash[:notice] = 'Selank was successfully updated.'
        format.html { redirect_to(@selank) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @selank.errors, :status => :unprocessable_entity }
      end
    end
  end
  def pay
   setwsfirm
   @selank = Selank.find(params[:id])
   checkid(@selank.firm_id)
   if (@selank.firm.active==true) and (@selank.firm.moderate==true)
   if @selank.firm.acount >= 30
   @selank.payed=true
   @selank.firm.acount=@selank.firm.acount-30
   @selank.firm.save
   @promoank=@selank.promoank
   @selank.contact=@promoank.mobilephone.to_s+","+@promoank.factphone.to_s+","+@promoank.email.to_s
   @selank.save
    end
   end
   redirect_to(firmmain_path_url(:page => '2'))
  end
  def uppay
    setwsfirm
   @selank = Selank.find(params[:id])
   checkid(@selank.firm_id)
   if (@selank.firm.active==true) and (@selank.firm.moderate==true)
   if @selank.firm.acount >= 15
   @selank.payed=true
   @selank.firm.acount=@selank.firm.acount-15
   @selank.firm.save
   @promoank=@selank.promoank
   @selank.contact="Моб. Тел. : "+@promoank.mobilephone.to_s+" , Дом. Тел. : "+@promoank.factphone.to_s+" , Email : "+@promoank.email.to_s+" ;"
   @selank.save
    end
   end
   redirect_to(firmmain_path_url(:page => '2'))
  end
  # DELETE /selanks/1
  # DELETE /selanks/1.xml
  def destroy
    setwsfirm
    @selank = Selank.find(params[:id])
    checkid(@selank.firm_id)
    @selank.destroy

    respond_to do |format|
      format.html { redirect_to(firmmain_path_url(:page =>'2')) }
      format.xml  { head :ok }
    end
  end
end
