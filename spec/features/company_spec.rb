require 'rails_helper'

describe "Company" do

  describe "companies#index" do
    it "should display list of companies" do
      Company.create!(name: "Apple")
      visit companies_path
      expect(page).to have_content 'Apple'
    end
  end

end