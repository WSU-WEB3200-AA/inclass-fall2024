class CreateInstructors < ActiveRecord::Migration[7.2]
  def change
    create_table :instructors do |t|
      t.string :wno
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
