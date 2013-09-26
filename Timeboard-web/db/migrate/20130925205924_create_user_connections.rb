class CreateUserConnections < ActiveRecord::Migration
  def change
    create_table :user_connections do |t|
      t.references :user, index: true, null: false
      t.references :friend_user, index: true, null: false

      t.timestamps
    end
  end
end
