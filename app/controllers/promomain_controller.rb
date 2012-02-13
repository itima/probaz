class PromomainController < ApplicationController

layout "inner_person"

before_filter :setwspromo
before_filter :checkauth

  def index
    @page=params[:page]
    if @page == nil
      @page='0'
    end
  @ank=Promoank.find_by_email(session[:user_id])
  @anktogroups=Anktogroup.find_all_by_promoank_id(@ank.id)
  @anktolangs=Anktolang.find_all_by_promoank_id(@ank.id)
  @selanks=Selank.find_all_by_promoank_id_and_payed(@ank.id,false)
  @payanks=Selank.find_all_by_promoank_id_and_payed(@ank.id,true)
  if (@ank.files != nil) and (@ank.files != "")
    @files = @ank.files.split(/,/)
  else
    @files=nil
  end
  if @ank == nil

    end
  end

end
