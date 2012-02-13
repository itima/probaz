# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  private
 def checkauth
   case session[:group]
  when 'promo'
   case session[:ws]
   when 'promo'
    @user=Promoank.find_by_email(session[:user_id])
    if (@user==nil) or (@user.pass != session[:pass]) 
      redirect_to(promologin_path_url)
     end
   when 'firm'
    redirect_to(firmlogin_path_url)
   else
    redirect_to(main_path_url)
   end
  when 'firm'
   case session[:ws]
   when 'firm'
    @org=Firm.find_by_email(session[:user_id])
    if (@org==nil) or (@org.pass != session[:pass]) 
      redirect_to(firmlogin_path_url)
     end
   when 'promo'
    redirect_to(promologin_path_url)
   else
    redirect_to(main_path_url)
   end

  when 'admin'
   @admin = Admin.find_by_kod(session[:user_id])
   if (@admin==nil) or (@admin.pass != session[:pass])
    redirect_to(adminlogin_path_url)
   end
  when nil
  redirect_to(main_path_url)
  end

 
 end
 def checkid(idd)
  case session[:group]
  when 'promo'
   case session[:ws]
   when 'promo'
    @user=Promoank.find_by_email(session[:user_id])
    if (@user==nil) or (@user.pass != session[:pass]) or ( @user.id !=idd)
      redirect_to(promologin_path_url)
     end
   when 'firm'
    redirect_to(firmlogin_path_url)
   else
    redirect_to(main_path_url)
   end
  when 'firm'
   case session[:ws]
   when 'firm'
    @org=Firm.find_by_email(session[:user_id])
    if (@org==nil) or (@org.pass != session[:pass]) or ( @org.id !=idd)
      redirect_to(firmlogin_path_url)
     end
   when 'promo'
    redirect_to(promologin_path_url)
   else
    redirect_to(main_path_url)
   end

  when 'admin'
   @admin = Admin.find_by_kod(session[:user_id])
   if (@admin==nil) or (@admin.pass != session[:pass])
    redirect_to(adminlogin_path_url)
   end
  when nil
  redirect_to(main_path_url)
  end


 end

 def setwsfirm
 session[:ws]='firm'
 end
 def setwspromo
 session[:ws]='promo'
 end
 def setwsadmin
 session[:ws]='admin'
 end
end
