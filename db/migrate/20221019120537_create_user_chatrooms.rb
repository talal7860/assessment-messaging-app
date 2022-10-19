class CreateUserChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :user_chatrooms do |t|
      t.bigint :user_id
      t.bigint :chatroom_id

      t.timestamps
    end

    add_index :user_chatrooms, [:chatroom_id, :user_id]
  end
end
