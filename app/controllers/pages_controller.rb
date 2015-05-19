class PagesController < ApplicationController
  def home
    @contact = Contact.new
    @users = User.all
  end

  def initiate
  end

  def accelerate
  end

  def implement
  end

  before_filter :authenticate_user!, except:[:home]
  def handbook
  end	
end
