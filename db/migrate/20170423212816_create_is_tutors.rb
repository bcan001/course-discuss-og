class CreateIsTutors < ActiveRecord::Migration[5.0]
  def change
    create_table :is_tutors do |t|
    	t.integer :rate
      t.string :description
      t.integer :user_id
      t.integer :course_id
      t.timestamps null: false
    end
  end
end
