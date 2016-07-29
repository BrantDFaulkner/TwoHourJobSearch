require 'rails_helper'

describe "User" do

  user = User.create!(
      email: "test@gmail.com",
      username: "Testy McTest",
      password: "password",
      )

  scenario "User can register" do
    visit root_path
    click_link "Register"
    fill_in('Username', :with => "Jacob")
    fill_in('Email', :with => "jacob@gmail.com")
    fill_in('Password', :with => "password")
    click_button "Register"
    expect(page).to have_content 'Jacob'
  end

  scenario "User can sign in" do
    sign_in(user)
    expect(page).to have_content user.username
  end

end
