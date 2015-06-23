class ContactsController < ApplicationController
  theme 'focus'

  def new
    @page_active = "contact"
    
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      SendMailer.contact_email(params[:contact]).deliver
      flash[:notice] = 'Mensagem enviado com sucesso'
      redirect_to :action => 'new'
      return 
    end

    render :action => 'new'
  end
end