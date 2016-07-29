class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
    end
  end
end
