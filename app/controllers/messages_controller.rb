class MessagesController < ApplicationController
  def index
    @chats = Chat.all
    @messages = Message.all
  end
end
