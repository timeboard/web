class CreateCalendarItems < ActiveRecord::Migration
  def change
    create_table :calendar_items do |t|
      t.integer :user_id, null: false
      t.string :type, null: false
      t.string :item_class, null:false
      t.string :summary, null:false
      t.text :description
      t.text :url
      t.date :start_date
      t.date :end_date
      t.string :repeat_rule

      t.timestamps
    end
  end
end
