class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :username
      t.string :password_digest
      t.string :tutor
      t.timestamps null: false
    end
  end
end
