class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :title
      t.text :description
      t.integer :credits

      t.timestamps
    end
  end
end
