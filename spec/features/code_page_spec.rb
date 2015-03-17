require 'rails-helper'

feature 'code' do

  scenario 'Code added' do
    visit root_path
    click_on "Code"
    expect(page).to have_content("All projects code")
    click_on "Add Code"
    fill_in :codeblock, with: "Test Code"
  end
end
