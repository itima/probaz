class Notifications < ActionMailer::Base
  
  def contact(email_params)
    subject "[Probaz.ru] " << email_params[:subject]
    recipients "alexey@itima.ru, ilya@itima.ru"
    from "ilyasp@inbox.ru"
    headers         "Reply-to" => "feedback@probaz.ru"
    sent_on Time.now

    body :message => email_params[:body], :name => email_params[:name]
  end
  
end
