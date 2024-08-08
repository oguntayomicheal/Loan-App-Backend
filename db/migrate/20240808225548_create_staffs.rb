class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :staff_id

      t.timestamps
    end
    add_index :staffs, :staff_id, unique: true
  end
end
