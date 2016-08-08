require 'rails_helper'

describe "CompaniesContacts" do
  let(:user) { User.create!(email: "test@gmail.com", username: "Testy McTest", password: "password") }
  let(:contact) { Contact.create!(first_name: first_name, last_name: last_name, email: email, phone_number: phone_number) }
  let(:first_name) { "George" }
  let(:last_name) { "Washington" }
  let(:email) { "geroge@gmail.com" }
  let(:phone_number) { "1234567890" }

  # scenario "Contact can have a company association" do
  #   user.companies.create!(name: "Starbucks", motivation: 2)
  #   sign_in(user)
  #   visit contact_path(contact)
  #   click_link "Add Association"
  #   select "Starbucks", :from => "Company"
  #   click_button "Create"
  #   expect(page).to have_content "Starbucks"
  # end

end