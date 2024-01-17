require 'rails_helper'

RSpec.feature "Users can create new pools", driver: :selenium_chrome do
  scenario "with valid attribute" do
    visit '/'
    click_link "New Pool"

    fill_in "Name", with: "Diaco Indoor"

    click_button "Create Pool"

    expect(page).to have_content "Pool has been created"
  end
end
