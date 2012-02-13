class SeccodesController < ApplicationController
  before_filter :setwsadmin
  before_filter :checkauth
  layout "inner_admin"
  # GET /seccodes
  # GET /seccodes.xml
  def index
    @seccodes = Seccode.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seccodes }
    end
  end

  # GET /seccodes/1
  # GET /seccodes/1.xml
  def show
    @seccode = Seccode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seccode }
    end
  end

  # GET /seccodes/new
  # GET /seccodes/new.xml
  def new
    @seccode = Seccode.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seccode }
    end
  end

  # GET /seccodes/1/edit
  def edit
    @seccode = Seccode.find(params[:id])
  end

  # POST /seccodes
  # POST /seccodes.xml
  def create
    @seccode = Seccode.new(params[:seccode])

    respond_to do |format|
      if @seccode.save
        flash[:notice] = 'Seccode was successfully created.'
        format.html { redirect_to(seccodes_url) }
        format.xml  { render :xml => @seccode, :status => :created, :location => @seccode }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seccode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seccodes/1
  # PUT /seccodes/1.xml
  def update
    @seccode = Seccode.find(params[:id])

    respond_to do |format|
      if @seccode.update_attributes(params[:seccode])
        flash[:notice] = 'Seccode was successfully updated.'
        format.html { redirect_to(seccodes_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seccode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seccodes/1
  # DELETE /seccodes/1.xml
  def destroy
    @seccode = Seccode.find(params[:id])
    @seccode.destroy

    respond_to do |format|
      format.html { redirect_to(seccodes_url) }
      format.xml  { head :ok }
    end
  end
end
