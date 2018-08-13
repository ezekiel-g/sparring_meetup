class ProposalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :sport_id, :description, :username, :sport, :email, :age, :gender, :height, :weight, :reach

  def username
    object.user.username
  end

  def sport
    object.sport.name.upcase
  end

  def email
    object.user.email
  end

  def age
    object.user.age
  end

  def gender
    object.user.gender
  end

  def height
    object.user.height
  end

  def weight
    object.user.weight
  end

  def reach
    if object.user.reach != nil
      return object.user.reach
    else
      return 'N/A'
    end
  end
end
