class CreateAdvocations < ActiveRecord::Migration
  def change
    create_table :advocations do |t|
      t.belongs_to :company
      t.belongs_to :advocate
    end
  end
end



