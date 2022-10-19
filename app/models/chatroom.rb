class Chatroom < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3, maximum: 50}
    
    has_many :user_chatrooms, class_name: "UserChatroom"
    has_many :users, through: :user_chatrooms
    has_many :messages
end
