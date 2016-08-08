class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to  :user

      t.string      :advocate
      t.integer     :motivation
      t.string      :name
      t.integer     :posting
    end
  end
end
