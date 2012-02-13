class RegisterController < ApplicationController

	layout "application1col"
	
  def index
    @sec=Time.now.sec+1
    @min=Time.now.min+1
    @hour=Time.now.hour
    @fval=Seccode.find(:all, :order => "RAND()").first
    @nval=Seccode.find(:all, :order => "RAND()").last
    if @hour<12
    @svar=1
    @str=@fval.name.to_s+" - "+@nval.name.to_s+" =  "
    else 
    @svar=2
    @str=@fval.name.to_s+" + "+@nval.name.to_s+" =  "
    end
    @fid=@fval.id
    @nid=@nval.id
    if request.post?
    	# TODO: FIX THIS THING
    if checkkod(params[:val],params[:fid],params[:nid]).to_i==params[:kod].to_i
    
    	 if params[:what]=='1'
    	 	
      @ank=Promoank.find_by_email(params[:login].to_s.downcase)
      if (params[:login]!="") and (@ank == nil)
      @ank=Promoank.new
      @ank.active=false
      @ank.email=params[:login].to_s.downcase
      @ank.pass=params[:pass]
      @ank.moderate=false
      @ank.checkemail=false
      @ank.reject=false
      @ank.rejectmsg=''
      @ank.save
     # puts "hello woruld2"
      session[:user_id]=@ank.email
      session[:group]= "promo"
      session[:pass] = @ank.pass
	
      redirect_to(sendtoank_path_url(:id => @ank.id))
      else
      flash[:notice] = 'Email уже существует.'
      end
      else
        @org=Firm.find_by_email(params[:login].to_s.downcase)
        if (params[:login]!="") and (@org==nil)
        @org=Firm.new
        @org.active=false
        @org.email=params[:login].to_s.downcase
        @org.moderate=false
        @org.checkemail=false
        @org.acount=100;
        @org.pass=params[:pass]
        @org.name=''
        @org.save
        session[:user_id]=@org.email
        session[:group]= "firm"
        session[:pass] = @org.pass
         flash[:notice]=''
        redirect_to(sendtofirm_path_url(:id => @org.id))
        else
        flash[:notice] = 'Email уже существует.'
        end
     end
    else
     flash[:notice] = 'Неверный код.'
    end
   end
  end
def checkkod(val,n1,n2)
@fval=Seccode.find(n1)
@nval=Seccode.find(n2)
case val
when '1'
@summ=@fval.value-@nval.value
when '2'
@summ=@fval.value+@nval.value
end
return @summ
end
end
