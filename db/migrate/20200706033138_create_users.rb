class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :confirm_password
      t.string :face_id_img, null: true
      t.string :profile_img, null: true

      t.timestamps
    end
  end
end
