class ContactController < ApplicationController
	layout "application1col"
	
  def index
  end

  def create
	  if Notifications.deliver_contact(params[:contact])
	    flash[:notice] = "Ваше сообщение успешно отправлено."
	    redirect_to(contact_path)
	  else
	    flash.now[:error] = "Возникла ошибка при отправке сообщения."
	    render :index
	  end
  end

end
