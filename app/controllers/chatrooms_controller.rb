class ChatroomsController < ApplicationController
  before_action :require_user
  before_action :set_chatroom, only: [:show]

  def index
    @chatroom = Chatroom.new
    @chatrooms = Chatroom.all
  end

  def show
    # Join group if not a memeber
    @chatroom.users << current_user if !@chatroom.users.exists?(current_user.id)
    @message = Message.new
    @users = @chatroom.users
    @messages = @chatroom.messages
  end

  def create
    @chatroom = Chatroom.create(chatroom_params)
    if @chatroom.save
      flash[:success] = "Chatroom Created"
      redirect_to root_path
    end
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
