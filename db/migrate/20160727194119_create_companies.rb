class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to  :user

      t.boolean     :advocate, default: false
      t.integer     :motivation, default: -1
      t.string      :name
      t.integer     :posting, default: -1
    end
  end
end
