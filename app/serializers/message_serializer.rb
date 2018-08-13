class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id, :chat_id, :created_at, :username

  def username
    object.user.username
  end
end
