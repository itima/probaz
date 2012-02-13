class WorkemploymentsController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
layout "inner_admin"
  # GET /workemployments
  # GET /workemployments.xml
  def index
    @workemployments = Workemployment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workemployments }
    end
  end

  # GET /workemployments/1
  # GET /workemployments/1.xml
  def show
    @workemployment = Workemployment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workemployment }
    end
  end

  # GET /workemployments/new
  # GET /workemployments/new.xml
  def new
    @workemployment = Workemployment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workemployment }
    end
  end

  # GET /workemployments/1/edit
  def edit
    @workemployment = Workemployment.find(params[:id])
  end

  # POST /workemployments
  # POST /workemployments.xml
  def create
    @workemployment = Workemployment.new(params[:workemployment])

    respond_to do |format|
      if @workemployment.save
        flash[:notice] = 'Workemployment was successfully created.'
        format.html { redirect_to(workemployments_url) }
        format.xml  { render :xml => @workemployment, :status => :created, :location => @workemployment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workemployment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workemployments/1
  # PUT /workemployments/1.xml
  def update
    @workemployment = Workemployment.find(params[:id])

    respond_to do |format|
      if @workemployment.update_attributes(params[:workemployment])
        flash[:notice] = 'Workemployment was successfully updated.'
        format.html { redirect_to(workemployments_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workemployment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workemployments/1
  # DELETE /workemployments/1.xml
  def destroy
    @workemployment = Workemployment.find(params[:id])
    @workemployment.destroy

    respond_to do |format|
      format.html { redirect_to(workemployments_url) }
      format.xml  { head :ok }
    end
  end
end
