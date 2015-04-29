class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: "Thanks for contacting us. We'll get back to you soon!" }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { redirect_to root_path, alert: "Your message could not be sent. Please try again." }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def contact_params
      params.require(:contact).permit(:name, :email, :description)
  end
end
