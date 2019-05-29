class Api::V1::UsersController < ApplicationController

  # READ
  def index
    @users = User.all
    render json: @users, status: 200
  end

  # CREATE
  def create
    @user = User.create(user_params)
    render json: @user, status: 200
  end

  # UPDATE
  def update
    @user = User.find(params[:id])
    render json: @user, status: 200
  end

  # PRIVATE METHODS
  private

  def user_params
    params.require(:users).permit(:name, :email, :level)
  end
end
