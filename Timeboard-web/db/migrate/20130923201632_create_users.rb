class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :password, :null => false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :nick_name
      t.string :gender
      t.date :date_of_birth
      t.datetime :date_joined
      t.string :profile_photo_url

      t.timestamps
    end
  end
end
