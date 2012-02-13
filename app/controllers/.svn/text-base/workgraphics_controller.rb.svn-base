class WorkgraphicsController < ApplicationController
  before_filter :setwsadmin
  before_filter :checkauth
  layout "inner_admin"
  # GET /workgraphics
  # GET /workgraphics.xml
  def index
    @workgraphics = Workgraphic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workgraphics }
    end
  end

  # GET /workgraphics/1
  # GET /workgraphics/1.xml
  def show
    @workgraphic = Workgraphic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workgraphic }
    end
  end

  # GET /workgraphics/new
  # GET /workgraphics/new.xml
  def new
    @workgraphic = Workgraphic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workgraphic }
    end
  end

  # GET /workgraphics/1/edit
  def edit
    @workgraphic = Workgraphic.find(params[:id])
  end

  # POST /workgraphics
  # POST /workgraphics.xml
  def create
    @workgraphic = Workgraphic.new(params[:workgraphic])

    respond_to do |format|
      if @workgraphic.save
        flash[:notice] = 'Workgraphic was successfully created.'
        format.html { redirect_to(workgraphics_url) }
        format.xml  { render :xml => @workgraphic, :status => :created, :location => @workgraphic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workgraphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workgraphics/1
  # PUT /workgraphics/1.xml
  def update
    @workgraphic = Workgraphic.find(params[:id])

    respond_to do |format|
      if @workgraphic.update_attributes(params[:workgraphic])
        flash[:notice] = 'Workgraphic was successfully updated.'
        format.html { redirect_to(workgraphics_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workgraphic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workgraphics/1
  # DELETE /workgraphics/1.xml
  def destroy
    @workgraphic = Workgraphic.find(params[:id])
    @workgraphic.destroy

    respond_to do |format|
      format.html { redirect_to(workgraphics_url) }
      format.xml  { head :ok }
    end
  end
end
