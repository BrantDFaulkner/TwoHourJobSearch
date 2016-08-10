class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to  :user

      t.boolean     :advocate, default: false
      t.integer     :motivation
      t.string      :name
      t.integer     :posting
    end
  end
end
