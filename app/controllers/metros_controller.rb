class MetrosController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
layout "inner_admin"
  # GET /metros
  # GET /metros.xml
  def index
    @metros = Metro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @metros }
    end
  end

  # GET /metros/1
  # GET /metros/1.xml
  def show
    @metro = Metro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @metro }
    end
  end

  # GET /metros/new
  # GET /metros/new.xml
  def new
    @metro = Metro.new
    @cities=City.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @metro }
    end
  end

  # GET /metros/1/edit
  def edit
    @metro = Metro.find(params[:id])
    @cities=City.find(:all)
  end

  # POST /metros
  # POST /metros.xml
  def create
    @metro = Metro.new(params[:metro])

    respond_to do |format|
      if @metro.save
        flash[:notice] = 'Metro was successfully created.'
        format.html { redirect_to(metros_url) }
        format.xml  { render :xml => @metro, :status => :created, :location => @metro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @metro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /metros/1
  # PUT /metros/1.xml
  def update
    @metro = Metro.find(params[:id])

    respond_to do |format|
      if @metro.update_attributes(params[:metro])
        flash[:notice] = 'Metro was successfully updated.'
        format.html { redirect_to(metros_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @metro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /metros/1
  # DELETE /metros/1.xml
  def destroy
    @metro = Metro.find(params[:id])
    @metro.destroy

    respond_to do |format|
      format.html { redirect_to(metros_url) }
      format.xml  { head :ok }
    end
  end
end
