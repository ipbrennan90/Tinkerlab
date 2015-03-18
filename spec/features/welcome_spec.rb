require 'rails_helper'

feature 'Welcome' do

  scenario "Anonymous user can see welcome page with defaults" do
    visit root_path
    categories
    expect(page).to have_content("TinkerLab")
    expect(page).to have_link("Log in")
    expect(page).to have_link("Sign Up")
    expect(page).to have_link("#{@user.categories.first.name}")
    expect(page).to have_link("#{@user.categories.first.projects.first.title}")
    expect(page).to have_link("#{@user.categories.find(2).name}")
    expect(page).to have_link("#{@user.categories.find(2).projects.first.title}")
    expect(page).to have_link("#{@user.categories.find(3).name}")
    expect(page).to have_link("#{@user.categories.find(3).projects.first.title}")
