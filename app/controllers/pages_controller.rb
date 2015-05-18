class PagesController < ApplicationController
  def home
    @contact = Contact.new
  end

  def initiate
  end

  def accelerate
  end

  def implement
  end

  before_filter :authenticate_user!
  def handbook
  end	
end
