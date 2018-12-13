class UsersController < ApplicationController
  # POST /signup
  # return authenticated token upon signup
  skip_before_action :authorize_request, only: :create
  def create
    puts user_params
    user = User.create!(user_params)
    puts user.email, user.password
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
        :name,
        :email,
        :password,
        :password_confirmation
    )
  end
end