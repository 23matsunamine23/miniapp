class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
  end

  def create
    Message.create(text: "" )
  end

end
