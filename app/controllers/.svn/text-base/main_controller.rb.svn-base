class MainController < ApplicationController
	
	layout "application1col"
	
  def index
   session[:group]=nil
  end

 def logout
  case session[:group]
  when 'promo'
         @loger=Loger.new
         @loger.objid=Promoank.find_by_email(session[:user_id]).id
         @loger.objtype="promo"
         @loger.accin=false
         @loger.save
  when 'firm'
         @loger=Loger.new
         @loger.objid=Firm.find_by_email(session[:user_id]).id
         @loger.objtype="firm"
         @loger.accin=false
         @loger.save
  when 'admin'
         @loger=Loger.new
         @loger.objid=Admin.find_by_kod(session[:user_id]).id
         @loger.objtype="admin"
         @loger.accin=false
         @loger.save
  end
  session[:user_id]= nil
  session[:notice]= nil
  session[:pass] = nil
  redirect_to(main_path_url)
 end
end
