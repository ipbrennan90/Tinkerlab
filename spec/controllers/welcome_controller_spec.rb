require 'rails_helper'

describe WelcomeController do

  describe 'GET #index' do
    it "assigns a new user object" do
      user = FactoryGirl.create(:user)
      get :index
      expect(assigns(:users)).to eq [user]
    end
  end
end
