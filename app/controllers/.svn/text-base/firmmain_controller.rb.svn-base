class FirmmainController < ApplicationController

layout "inner_firm"

before_filter :setwsfirm
before_filter :checkauth
  def index
    @page=params[:page]
    if @page == nil
      @page='0'
    end

    @pos=params[:pos]
    if session[:posorder] == nil
      session[:posorder]=0
    end
    if @pos== '-'
      session[:posorder]=session[:posorder].to_i-50
      if session[:posorder].to_i<0
       session[:posorder]=0
      end
      end
    if @pos== '+'
      session[:posorder]=session[:posorder].to_i+50
      end
    if @pos== '<'
      session[:posorder]=0
      end

     @poss=params[:poss]
    if session[:pospayed] == nil
      session[:pospayed]=0
    end
    if @poss== '-'
      session[:pospayed]=session[:pospayed].to_i-50
      if session[:pospayed].to_i<0
       session[:pospayed]=0
      end
      end
    if @poss== '+'
      session[:pospayed]=session[:pospayed].to_i+50
      end
    if @poss== '<'
      session[:pospayed]=0
      end


     @firm=Firm.find_by_email(session[:user_id])
      @selanks = Selank.find_all_by_firm_id_and_payed(@firm.id,false,:offset => session[:posorder], :limit => 50)
      if @selanks.size==0
       session[:posorder]=session[:posorder].to_i-50
       if session[:posorder].to_i<0
         session[:posorder]=0
       end
       @selanks = Selank.find_all_by_firm_id_and_payed(@firm.id,false,:offset => session[:posorder], :limit => 50)
      end
      @payanks = Selank.find_all_by_firm_id_and_payed(@firm.id,true,:offset => session[:pospayed], :limit => 50)
      if @payanks.size==0
       session[:pospayed]=session[:pospayed].to_i-50
       if session[:pospayed].to_i<0
         session[:pospayed]=0
       end
       @payanks = Selank.find_all_by_firm_id_and_payed(@firm.id,true,:offset => session[:pospayed], :limit => 50)
      end
  end

end
