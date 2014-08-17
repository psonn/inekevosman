class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render :layout => 'custom'
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.save
      redirect_to root_path, notice: 'Dank voor uw bericht. U ontvangt zo spoedig mogelijk een antwoord.'
    else
      render :new, error: 'Kan bericht niet versturen.'
    end
  end
end
