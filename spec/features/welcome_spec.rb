require 'rails_helper'

feature 'Welcome' do

  scenario "Anonymous user can see welcome page with defaults" do
    visit root_path
    expect(page).to have_content("TinkerLab")
    expect(page).to have_link("Log in")
    expect(page).to have_link("Sign Up")
    expect(page).to have_link("#{@user.categories.find(1)}")
