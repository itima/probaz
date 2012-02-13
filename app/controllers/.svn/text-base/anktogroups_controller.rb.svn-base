class AnktogroupsController < ApplicationController
before_filter :setwspromo
before_filter :checkauth

layout "inner_person"

  # GET /anktogroups
  # GET /anktogroups.xml
  def index
  end

  # GET /anktogroups/1
  # GET /anktogroups/1.xml
  def show
  end

  # GET /anktogroups/new
  # GET /anktogroups/new.xml
  def new
    checkid(params[:ank_id].to_i)
    @anktogroup = Anktogroup.new
    @anktogroup.promoank_id=params[:ank_id].to_i
    @ag=Ankgroup.find(:all)
    @ank = @anktogroup.promoank
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @anktogroup }
    end
  end

  # GET /anktogroups/1/edit
  def edit
    @anktogroup = Anktogroup.find(params[:id])
    @ank = @anktogroup.promoank
    checkid(@anktogroup.promoank_id)
    @ag=Ankgroup.find(:all)
  end

  # POST /anktogroups
  # POST /anktogroups.xml
  def create
    @anktogroup = Anktogroup.new(params[:anktogroup])
    checkid(@anktogroup.promoank_id)
    respond_to do |format|
      if @anktogroup.save
        flash[:notice] = 'Специализация создана успешно!'
        format.html {redirect_to(promomain_path_url(:page => 1)) }
        format.xml  { render :xml => @anktogroup, :status => :created, :location => @anktogroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @anktogroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /anktogroups/1
  # PUT /anktogroups/1.xml
  def update
    
    @anktogroup = Anktogroup.find(params[:id])
    checkid( @anktogroup.promoank_id)
    respond_to do |format|
      if @anktogroup.update_attributes(params[:anktogroup])
        flash[:notice] = 'Специализация изменена успешно!'
        format.html { redirect_to(promomain_path_url(:page => 1)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @anktogroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /anktogroups/1
  # DELETE /anktogroups/1.xml
  def destroy
    @anktogroup = Anktogroup.find(params[:id])
    checkid(@anktogroup.promoank_id)
    @anktogroup.destroy

    respond_to do |format|
      format.html { redirect_to(promomain_path_url(:page => 1)) }
      format.xml  { head :ok }
    end
  end
end
