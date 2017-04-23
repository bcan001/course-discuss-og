class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :school_id
      t.timestamps null: false
    end
  end
end
