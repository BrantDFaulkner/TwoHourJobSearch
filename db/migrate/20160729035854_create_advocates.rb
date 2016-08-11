class CreateAdvocates < ActiveRecord::Migration
  def change
    create_table :advocates do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :linkedin
    end
  end
end
