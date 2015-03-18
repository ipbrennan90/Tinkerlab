require 'rails_helper'

feature 'Authentication' do

  scenario 'User can sign up' do
    visit root_path
    click_on "Sign Up"
    expect(current_path).to eq (sign_up_path)
    fill_in :user_username, with: "username"
    fill_in :user_email, with: "username@user.com"
    fill_in :user_password, with: "testpass"
    fill_in :user_password_confirmation, with: "testpass"
    within("form") {click_on "Sign Up"}
    expect(current_path).to eq (root_path)
    expect(page).to have_content("Welcome to TinkerLab username")
  end
end
