class UserChatroom < ApplicationRecord
    attr_accessor :user_id, :chatroom_id
    belongs_to :user
    belongs_to :chatroom
end
