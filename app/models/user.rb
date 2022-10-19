class User < ApplicationRecord
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minmum: 3, maximum: 15}
  has_secure_password

  has_many :messages
  has_many :user_chatrooms, class_name: "UserChatroom"
  has_many :chatrooms, through: :user_chatrooms
end
