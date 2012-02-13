class EducationformsController < ApplicationController
  before_filter :setwsadmin
  before_filter :checkauth
  layout "inner_admin"

  # GET /educationforms
  # GET /educationforms.xml
  def index
    @educationforms = Educationform.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @educationforms }
    end
  end

  # GET /educationforms/1
  # GET /educationforms/1.xml
  def show
    @educationform = Educationform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @educationform }
    end
  end

  # GET /educationforms/new
  # GET /educationforms/new.xml
  def new
    @educationform = Educationform.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @educationform }
    end
  end

  # GET /educationforms/1/edit
  def edit
    @educationform = Educationform.find(params[:id])
  end

  # POST /educationforms
  # POST /educationforms.xml
  def create
    @educationform = Educationform.new(params[:educationform])

    respond_to do |format|
      if @educationform.save
        flash[:notice] = 'Educationform was successfully created.'
        format.html { redirect_to(educationforms_url) }
        format.xml  { render :xml => @educationform, :status => :created, :location => @educationform }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @educationform.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /educationforms/1
  # PUT /educationforms/1.xml
  def update
    @educationform = Educationform.find(params[:id])

    respond_to do |format|
      if @educationform.update_attributes(params[:educationform])
        flash[:notice] = 'Educationform was successfully updated.'
        format.html { redirect_to(educationforms_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @educationform.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /educationforms/1
  # DELETE /educationforms/1.xml
  def destroy
    @educationform = Educationform.find(params[:id])
    @educationform.destroy

    respond_to do |format|
      format.html { redirect_to(educationforms_url) }
      format.xml  { head :ok }
    end
  end
end
