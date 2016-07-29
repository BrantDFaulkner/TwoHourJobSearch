require 'rails_helper'

describe "Company" do
  let(:user) { User.create!(email: "test@gmail.com", username: "Testy McTest", password: "password") }
  let(:name) { "CNBC" }

  scenario "User can add a company" do
    sign_in(user)
    visit companies_path
    click_link "Add Company"
    fill_in "Name",  :with => name
    select "1", :from => "Motivation"
    click_button "Create"
    expect(page).to have_content name
  end

end