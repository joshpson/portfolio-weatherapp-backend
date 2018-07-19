class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user

  def index
    @users = User.all
    render json: @users
  end

  def show_user
    render json: current_user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :metric)
  end

end
