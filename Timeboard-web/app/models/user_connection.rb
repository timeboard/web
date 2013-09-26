class UserConnection < ActiveRecord::Base
  belongs_to :user, class_name: 'User'
  belongs_to :friend_user, class_name: 'User'
end
