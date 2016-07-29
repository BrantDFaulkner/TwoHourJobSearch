class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to :user
      t.string :name
      t.integer :motivation
    end
  end
end
