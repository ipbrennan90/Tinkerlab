require 'rails_helper'

feature 'Welcome' do

  scenario "Anonymous user can see welcome page with defaults" do
    visit root_path
    users = FactoryGirl.create_list(:user,3)
    expect(page).to have_content("TinkerLab")
    expect(page).to have_link("Log in")
    expect(page).to have_link("Sign Up")
    expect(page).to have_link("#{users[0].categories.first.name}")
    expect(page).to have_link("#{users[0].categories.first.projects.first.title}")
  end
end
