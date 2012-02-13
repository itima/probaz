class FirmloginController < ApplicationController
	
	layout "application1col"
	
  def index
  session[:group]="firm"
  session[:user_id]=nil
     if request.post?
      user = check
      if user
         session[:user_id] = user.email
          session[:pass] = params[:pass]
         session[:notice]= "Здравствуйте, ",user.name, "."
         @loger=Loger.new
         @loger.objid=user.id
         @loger.objtype="firm"
         @loger.accin=true
         @loger.save
         redirect_to(:controller => "firmmain",:action => "index")

      else
         flash[:notice]= "Неправельная пара логин, пароль!"
      end
   end
  end
 def check
  @emp=Firm.find_by_email(params[:login].to_s.upcase)
  if (@emp!=nil) and (@emp.pass !=  params[:pass])
    return nil
  else
    return @emp
  end
 end


end
