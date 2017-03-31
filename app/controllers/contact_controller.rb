class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'TMerci pour votre message, nous vous recontactons au plus vite!'
    else
      flash.now[:error] = 'Envoi du message impossible.'
      render :new
    end
  end
end
