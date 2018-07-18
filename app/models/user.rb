class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :authentication_keys => [:username]

  has_many :tasks

  validates :username, uniqueness: true

  def email_required?
    false
  end
  
  def will_save_change_to_email?
    false
  end
end
