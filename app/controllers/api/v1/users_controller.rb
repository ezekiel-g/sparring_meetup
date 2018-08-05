class Api::V1::UsersController < AppicationController
  def index
    render json: User.all
  end
end
