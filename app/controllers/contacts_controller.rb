class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.save
      redirect_to root_path, notice: 'Thank you for your message. We will contact you soon!'
    else
      render :new, error: 'Cannot send message.'
    end
  end
end
