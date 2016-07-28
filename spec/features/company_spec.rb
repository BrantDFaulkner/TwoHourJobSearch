require 'rails_helper'

describe "Company" do

  describe "companies#index" do
    it "should display list of companies" do
      Company.create!(name: "Apple")
      visit companies_path
      expect(page).to have_content 'Apple'
    end
  end

  feature "Adding a company" do
    scenario "with correct details" do
      visit companies_path
      click_link "Add Company"
      expect(page.current_path).to eq new_company_path
      fill_in "Name",  :with => "CNBC"
      select "1", :from => "Motivation"
      click_button "Create"
      expect(page.current_path).to eq companies_path
      expect(page).to have_content "CNBC"
    end
  end

end