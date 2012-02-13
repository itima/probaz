class AdminloginController < ApplicationController
  def index
  session[:group]="admin"
  session[:user_id]=nil
     if request.post?
      user = check
      if user
         session[:user_id] = user.kod
         session[:pass] = user.pass
         session[:notice]= "Здравствуйте, Администратор."
         @loger=Loger.new
         @loger.objid=user.id
         @loger.objtype="admin"
         @loger.accin=true
         @loger.save
         redirect_to(:controller => "adminmain",:action => "index")
      else
         flash[:notice]= "Неправельная пара логин, пароль!"
      end
   end
  end
 def check
   @us = Admin.find_by_kod(params[:login])
    if (@us.pass ==  params[:pass])
    return @us
   else
    return nil
   end
 end

end
