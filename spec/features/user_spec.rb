require 'rails_helper'

describe "User" do

  User.create!(
      email: "test@gmail.com",
      username: "Testy McTest",
      password: "password",
      )

  it "can register" do
    visit root_path
    click_link "Register"
    expect(page.current_path).to eq new_user_path
    fill_in('Username', :with => "Jacob")
    fill_in('Email', :with => "jacob@gmail.com")
    fill_in('Password', :with => "password")
    click_button "Register"
    expect(page).to have_content 'Jacob'

  end

  it "can log in" do
    visit root_path
    click_link('Sign In')
    expect(page.current_path).to eq new_session_path
    fill_in('Email', :with => "test@gmail.com")
    fill_in('Password', :with => "password")
    click_button('Sign In')
    expect(page).to have_content 'Testy McTest'
  end

end
