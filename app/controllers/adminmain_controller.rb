class AdminmainController < ApplicationController
  before_filter :setwsadmin
  before_filter :checkauth
  
  layout "inner_admin"


  def index
    @page=params[:page]
    if @page == nil
      @page='0'
    end
    @nanks=Promoank.find_all_by_moderate_and_checkemail_and_reject(false,true,false)
    @anks=Promoank.find(:all)
    @nfirms=Firm.find_all_by_moderate_and_checkemail(false,true)
    @firms=Firm.find(:all)
  end

end
