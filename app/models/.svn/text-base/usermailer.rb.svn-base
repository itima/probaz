class Usermailer < ActionMailer::Base
  

  def contact(msg,str,fio,sent_at = Time.now)
    subject "[Probaz.ru] Активация пользователя" << fio
    recipients msg
    from "ilyasp@inbox.ru"
    headers "Reply-to" => "ilyasp@inbox.ru"
    sent_on sent_at
    @body["str"] =  str
    
  end

end
