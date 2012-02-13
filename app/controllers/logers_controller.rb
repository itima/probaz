class LogersController < ApplicationController
before_filter :setwsadmin
before_filter :checkauth
  # GET /logers
  # GET /logers.xml
  def index
    @logers = Loger.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @logers }
    end
  end

  # GET /logers/1
  # GET /logers/1.xml
  def show
    @loger = Loger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @loger }
    end
  end

  # GET /logers/new
  # GET /logers/new.xml
  def new
    @loger = Loger.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @loger }
    end
  end

  # GET /logers/1/edit
  def edit
    @loger = Loger.find(params[:id])
  end

  # POST /logers
  # POST /logers.xml
  def create
    @loger = Loger.new(params[:loger])

    respond_to do |format|
      if @loger.save
        flash[:notice] = 'Loger was successfully created.'
        format.html { redirect_to(@loger) }
        format.xml  { render :xml => @loger, :status => :created, :location => @loger }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @loger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /logers/1
  # PUT /logers/1.xml
  def update
    @loger = Loger.find(params[:id])

    respond_to do |format|
      if @loger.update_attributes(params[:loger])
        flash[:notice] = 'Loger was successfully updated.'
        format.html { redirect_to(@loger) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /logers/1
  # DELETE /logers/1.xml
  def destroy
    @loger = Loger.find(params[:id])
    @loger.destroy

    respond_to do |format|
      format.html { redirect_to(logers_url) }
      format.xml  { head :ok }
    end
  end
end
