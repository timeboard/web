class User < ActiveRecord::Base
  # User can create different type of calendar_items, ie calendar_events & calendar_tasks.
  # All types of calendar_items share the same table named CALENDAR_ITEMS
  # Add different type of items here to allow access of each type of item collection.
  # user = user.find(1)
  # user.calendar_events
  has_many :calendar_items, dependent: :destroy
  has_many :calendar_events, dependent: :destroy
  has_many :calendar_tasks, dependent: :destroy
end
