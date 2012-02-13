class AnkgroupsController < ApplicationController
  before_filter :setwsadmin
  before_filter :checkauth
  layout "inner_admin"


  # GET /ankgroups
  # GET /ankgroups.xml
  def index
    @ankgroups = Ankgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ankgroups }
    end
  end

  # GET /ankgroups/1
  # GET /ankgroups/1.xml
  def show
    @ankgroup = Ankgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ankgroup }
    end
  end

  # GET /ankgroups/new
  # GET /ankgroups/new.xml
  def new
    @ankgroup = Ankgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ankgroup }
    end
  end

  # GET /ankgroups/1/edit
  def edit
    @ankgroup = Ankgroup.find(params[:id])
  end

  # POST /ankgroups
  # POST /ankgroups.xml
  def create
    @ankgroup = Ankgroup.new(params[:ankgroup])

    respond_to do |format|
      if @ankgroup.save
        flash[:notice] = 'Ankgroup was successfully created.'
        format.html { redirect_to(ankgroups_path) }
        format.xml  { render :xml => @ankgroup, :status => :created, :location => @ankgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ankgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ankgroups/1
  # PUT /ankgroups/1.xml
  def update
    @ankgroup = Ankgroup.find(params[:id])

    respond_to do |format|
      if @ankgroup.update_attributes(params[:ankgroup])
        flash[:notice] = 'Ankgroup was successfully updated.'
        format.html { redirect_to(ankgroups_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ankgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ankgroups/1
  # DELETE /ankgroups/1.xml
  def destroy
    @ankgroup = Ankgroup.find(params[:id])
    @ankgroup.destroy

    respond_to do |format|
      format.html { redirect_to(ankgroups_path) }
      format.xml  { head :ok }
    end
  end
end
