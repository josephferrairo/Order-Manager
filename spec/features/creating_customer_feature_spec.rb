require 'rails_helper'

RSpec.feature "creating customer" do
  scenario "with valid inputs succeeds" do
    user = Fabricate(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link "New Customer"
    fill_in "Name", with: "Business ABC"
    fill_in "Customer Code", with: "AAA"
    fill_in "Address", with: "221 Baker St"
    fill_in "City", with: "Peabody"
    fill_in "State", with: "MA"
    fill_in "Zip", with: "01960"

    click_button "Submit"

    expect(page).to have_content 'Customer has been created!'
  end
end
