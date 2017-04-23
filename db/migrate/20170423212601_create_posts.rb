class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.string :title
      t.string :description
      t.integer :user_id
      t.integer :school_id
      t.integer :course_id
      t.timestamps null: false
    end
  end
end
