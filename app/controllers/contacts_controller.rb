class ContactsController < ApplicationController
  require 'rainbow/ext/string'

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      # TODO save date
      # TODO send message
      flash[:notice] = "Mesage sent from #{@contact.name}"
      redirect_to root_path
    else
      render :new
    end
  end


  def process_form
    Rails.logger.debug "DEBUG: params are #{params}".background(:red)
    flash[:notice] = "Received request from #{params[:contact][:name]} #{params[:contact][:email]}"
    redirect_to root_path
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
