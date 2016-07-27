require 'rails_helper'

describe "User" do

  User.create!(
      email: "test@gmail.com",
      username: "Testy McTest",
      password: "password",
      )

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
