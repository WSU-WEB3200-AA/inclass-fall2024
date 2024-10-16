class CreateSections < ActiveRecord::Migration[7.2]
  def change
    create_table :sections do |t|
      t.references :semester, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.references :instructor, null: false, foreign_key: true
      t.string :modality
      t.string :days
      t.string :hours
      t.string :room
      t.boolean :active

      t.timestamps
    end
  end
end
