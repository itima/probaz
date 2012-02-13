class LoginNoEmailController < ApplicationController
  def index
    if request.post?
    @ank=Promoank.find(params[:id])
    if @ank != nil and @ank.pass == params[:pass] and (@ank.email == '' or @ank.email == nil)
    @ank.email=params[:email]
    @ank.save
    session[:user_id]=@ank.email
    session[:group]= "promo"
    session[:pass] = @ank.pass
    redirect_to(sendtoank_path_url(:id => @ank.id))
    end
  end
  end

end
