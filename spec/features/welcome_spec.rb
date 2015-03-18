require 'rails_helper'

feature 'Welcome' do

  scenario "anonymous user can see all authentication and authorization links" do
    visit root_path
    expect(page).to have_content("TinkerLab")
    expect(page).to have_link("Log in")
    expect(page).to have_link("Sign Up")
  end

  scenario "anonymous user can see default categories" do
    categories = FactoryGirl.create_list(:category_with_projects, 4)
    visit root_path
    expect(page).to have_link(categories[0].name)
    expect(page).to have_link(categories[1].name)
    expect(page).to have_link(categories[2].name)
    expect(page).to have_link(categories[3].name)
  end


  scenario 'logged in user can see projects' do
    user = FactoryGirl.create(:user)
    expect(page).to have_link("#{user.projects.first.title}")
  end




end
