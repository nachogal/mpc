require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET initiate" do
    it "returns http success" do
      get :initiate
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET accelerate" do
    it "returns http success" do
      get :accelerate
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET implement" do
    it "returns http success" do
      get :implement
      expect(response).to have_http_status(:success)
    end
  end

end
