class LanglevelsController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
layout "inner_admin"
  # GET /langlevels
  # GET /langlevels.xml
  def index
    @langlevels = Langlevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @langlevels }
    end
  end

  # GET /langlevels/1
  # GET /langlevels/1.xml
  def show
    @langlevel = Langlevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @langlevel }
    end
  end

  # GET /langlevels/new
  # GET /langlevels/new.xml
  def new
    @langlevel = Langlevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @langlevel }
    end
  end

  # GET /langlevels/1/edit
  def edit
    @langlevel = Langlevel.find(params[:id])
  end

  # POST /langlevels
  # POST /langlevels.xml
  def create
    @langlevel = Langlevel.new(params[:langlevel])

    respond_to do |format|
      if @langlevel.save
        flash[:notice] = 'Langlevel was successfully created.'
        format.html { redirect_to(langlevels_url) }
        format.xml  { render :xml => @langlevel, :status => :created, :location => @langlevel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @langlevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /langlevels/1
  # PUT /langlevels/1.xml
  def update
    @langlevel = Langlevel.find(params[:id])

    respond_to do |format|
      if @langlevel.update_attributes(params[:langlevel])
        flash[:notice] = 'Langlevel was successfully updated.'
        format.html { redirect_to(langlevels_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @langlevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /langlevels/1
  # DELETE /langlevels/1.xml
  def destroy
    @langlevel = Langlevel.find(params[:id])
    @langlevel.destroy

    respond_to do |format|
      format.html { redirect_to(langlevels_url) }
      format.xml  { head :ok }
    end
  end
end
