class Api::V1::MessagesController < ApplicationController
  def index
    @chats = Chat.all
    @messages = Message.all
  end
end
