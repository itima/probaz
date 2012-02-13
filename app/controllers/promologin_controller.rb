# encoding: utf-8
class PromologinController < ApplicationController
	
	layout "application1col"

  def index
  session[:group]='promo'
  session[:user_id]=nil
     if request.post?
      user = check
      if user
         session[:user_id] = user.email
         session[:pass] = params[:pass]
         session[:notice]= "Здравствуйте, ",user.fname, "."
         @loger=Loger.new
         @loger.objid=user.id
         @loger.objtype="promo"
         @loger.accin=true
         @loger.save
         redirect_to(:controller => "promomain",:action => "index")
      else
         flash[:notice]= "Неправельная пара логин, пароль!"
      end
   end
  end
 def check
  @emp=Promoank.find_by_email(params[:login].to_s.downcase)
  if (@emp != nil) and (@emp.pass !=  params[:pass])
    return nil
  else
    return @emp
  end
 end

end
