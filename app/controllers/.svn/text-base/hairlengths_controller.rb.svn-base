class HairlengthsController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
layout "inner_admin"
  # GET /hairlengths
  # GET /hairlengths.xml
  def index
    @hairlengths = Hairlength.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hairlengths }
    end
  end

  # GET /hairlengths/1
  # GET /hairlengths/1.xml
  def show
    @hairlength = Hairlength.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hairlength }
    end
  end

  # GET /hairlengths/new
  # GET /hairlengths/new.xml
  def new
    @hairlength = Hairlength.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hairlength }
    end
  end

  # GET /hairlengths/1/edit
  def edit
    @hairlength = Hairlength.find(params[:id])
  end

  # POST /hairlengths
  # POST /hairlengths.xml
  def create
    @hairlength = Hairlength.new(params[:hairlength])

    respond_to do |format|
      if @hairlength.save
        flash[:notice] = 'Hairlength was successfully created.'
        format.html { redirect_to(hairlengths_url) }
        format.xml  { render :xml => @hairlength, :status => :created, :location => @hairlength }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hairlength.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hairlengths/1
  # PUT /hairlengths/1.xml
  def update
    @hairlength = Hairlength.find(params[:id])

    respond_to do |format|
      if @hairlength.update_attributes(params[:hairlength])
        flash[:notice] = 'Hairlength was successfully updated.'
        format.html { redirect_to(hairlengths_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hairlength.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hairlengths/1
  # DELETE /hairlengths/1.xml
  def destroy
    @hairlength = Hairlength.find(params[:id])
    @hairlength.destroy

    respond_to do |format|
      format.html { redirect_to(hairlengths_url) }
      format.xml  { head :ok }
    end
  end
end
