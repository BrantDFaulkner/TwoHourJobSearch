require 'rails_helper'

describe "Contact" do
  let(:user) { User.create!(email: "test@gmail.com", username: "Testy McTest", password: "password") }
  let(:first_name) { "George" }
  let(:last_name) { "Washington" }
  let(:email) { "geroge@gmail.com" }
  let(:phone_number) { "1234567890" }

  scenario "User can add a contact" do
    sign_in(user)
    visit companies_path
    click_link "Add Contact"
    fill_in "First name",  :with => first_name
    fill_in "Last name",  :with => last_name
    fill_in "Email", :with => email
    fill_in "Phone number", :with => phone_number
    click_button "Create"
    expect(page).to have_content first_name
    expect(page).to have_content last_name
    expect(page).to have_content email
    expect(page).to have_content phone_number
  end

end