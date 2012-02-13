class PclevelsController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
layout "inner_admin"
  # GET /pclevels
  # GET /pclevels.xml
  def index
    @pclevels = Pclevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pclevels }
    end
  end

  # GET /pclevels/1
  # GET /pclevels/1.xml
  def show
    @pclevel = Pclevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pclevel }
    end
  end

  # GET /pclevels/new
  # GET /pclevels/new.xml
  def new
    @pclevel = Pclevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pclevel }
    end
  end

  # GET /pclevels/1/edit
  def edit
    @pclevel = Pclevel.find(params[:id])
  end

  # POST /pclevels
  # POST /pclevels.xml
  def create
    @pclevel = Pclevel.new(params[:pclevel])

    respond_to do |format|
      if @pclevel.save
        flash[:notice] = 'Pclevel was successfully created.'
        format.html { redirect_to(pclevels_url) }
        format.xml  { render :xml => @pclevel, :status => :created, :location => @pclevel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pclevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pclevels/1
  # PUT /pclevels/1.xml
  def update
    @pclevel = Pclevel.find(params[:id])

    respond_to do |format|
      if @pclevel.update_attributes(params[:pclevel])
        flash[:notice] = 'Pclevel was successfully updated.'
        format.html { redirect_to(pclevels_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pclevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pclevels/1
  # DELETE /pclevels/1.xml
  def destroy
    @pclevel = Pclevel.find(params[:id])
    @pclevel.destroy

    respond_to do |format|
      format.html { redirect_to(pclevels_url) }
      format.xml  { head :ok }
    end
  end
end
