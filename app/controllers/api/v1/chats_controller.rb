class Api::V1::ChatsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:search]

  def index
    @chats = Chat.all
    render json: @chats
  end
end
