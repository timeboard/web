class User < ActiveRecord::Base
  # User can create different type of calendar_items, ie calendar_events & calendar_tasks.
  # All types of calendar_items share the same table named CALENDAR_ITEMS
  # Add different type of items here to allow access of each type of item collection.
  # user = user.find(1)
  # user.calendar_events
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  has_many :calendar_items, dependent: :destroy
  has_many :calendar_events, dependent: :destroy
  has_many :calendar_tasks, dependent: :destroy
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
    length: { maximum: 50 }, 
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
