class ProposalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :sport_id, :description, :username

  def username
    object.user.username
  end
end
