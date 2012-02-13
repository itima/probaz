class HaircolorsController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
layout "inner_admin"

  # GET /haircolors
  # GET /haircolors.xml
  def index
    @haircolors = Haircolor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @haircolors }
    end
  end

  # GET /haircolors/1
  # GET /haircolors/1.xml
  def show
    @haircolor = Haircolor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @haircolor }
    end
  end

  # GET /haircolors/new
  # GET /haircolors/new.xml
  def new
    @haircolor = Haircolor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @haircolor }
    end
  end

  # GET /haircolors/1/edit
  def edit
    @haircolor = Haircolor.find(params[:id])
  end

  # POST /haircolors
  # POST /haircolors.xml
  def create
    @haircolor = Haircolor.new(params[:haircolor])

    respond_to do |format|
      if @haircolor.save
        flash[:notice] = 'Haircolor was successfully created.'
        format.html { redirect_to(haircolors_url) }
        format.xml  { render :xml => @haircolor, :status => :created, :location => @haircolor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @haircolor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /haircolors/1
  # PUT /haircolors/1.xml
  def update
    @haircolor = Haircolor.find(params[:id])

    respond_to do |format|
      if @haircolor.update_attributes(params[:haircolor])
        flash[:notice] = 'Haircolor was successfully updated.'
        format.html { redirect_to(haircolors_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @haircolor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /haircolors/1
  # DELETE /haircolors/1.xml
  def destroy
    @haircolor = Haircolor.find(params[:id])
    @haircolor.destroy

    respond_to do |format|
      format.html { redirect_to(haircolors_url) }
      format.xml  { head :ok }
    end
  end
end
