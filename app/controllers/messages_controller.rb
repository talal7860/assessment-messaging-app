class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast "chatroom_channel", {msg: wrap_message(message)}
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def wrap_message(message)
    render(partial: 'message', locals: {message: message})
  end

end