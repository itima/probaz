class AnktolangsController < ApplicationController
before_filter :setwspromo
before_filter :checkauth

layout "inner_person"
  # GET /anktolangs
  # GET /anktolangs.xml
  def index
  end

  # GET /anktolangs/1
  # GET /anktolangs/1.xml
  def show
  end

  # GET /anktolangs/new
  # GET /anktolangs/new.xml
  def new
    checkid(params[:ank_id].to_i)
    @anktolang = Anktolang.new
    @anktolang.promoank_id=params[:ank_id].to_i
    @ank = @anktolang.promoank
    @lang = Language.find(:all)
    @langl = Langlevel.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @anktolang }
    end
  end

  # GET /anktolangs/1/edit
  def edit
    @anktolang = Anktolang.find(params[:id])
	@ank = @anktolang.promoank
    checkid(@anktolang.promoank_id)
    @lang = Language.find(:all)
    @langl = Langlevel.find(:all)
  end

  # POST /anktolangs
  # POST /anktolangs.xml
  def create

    @anktolang = Anktolang.new(params[:anktolang])
    checkid(@anktolang.promoank_id)
    respond_to do |format|
      if @anktolang.save
        flash[:notice] = 'Иностранный язык добавлен успешно!'
        format.html { redirect_to(promomain_path_url (:page => 1)) }
        format.xml  { render :xml => @anktolang, :status => :created, :location => @anktolang }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @anktolang.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /anktolangs/1
  # PUT /anktolangs/1.xml
  def update
   
    @anktolang = Anktolang.find(params[:id])
    checkid( @anktolang.promoank_id)
    respond_to do |format|
      if @anktolang.update_attributes(params[:anktolang])
        flash[:notice] = 'Иностранный язык измененн успешно!'
        format.html { redirect_to(promomain_path_url (:page => 1)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @anktolang.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /anktolangs/1
  # DELETE /anktolangs/1.xml
  def destroy
    @anktolang = Anktolang.find(params[:id])
    checkid(@anktolang.promoank_id)
    @anktolang.destroy

    respond_to do |format|
      format.html { redirect_to(promomain_path_url (:page => 1)) }
      format.xml  { head :ok }
    end
  end
end
