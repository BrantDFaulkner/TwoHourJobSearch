class CreateCompanyContacts < ActiveRecord::Migration
  def change
    create_table :company_contacts do |t|
      t.belongs_to :company
      t.belongs_to :contact
    end
  end
end



