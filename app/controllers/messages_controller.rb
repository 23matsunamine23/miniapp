class MessagesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @messages = Message.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Message.create(text: message_params[:text], user_id: current_user.id)
    redirect_to action: :index
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy if message.user_id == current_user.id
    redirect_to action: :index
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    if message.user_id == current_user.id
      message.update(message_params)
    end
    redirect_to action: :index
  end


  private
  def message_params
    params.permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
