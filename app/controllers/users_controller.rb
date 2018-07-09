class UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]
  def index
    @users = User.all
  end

  def update
  end

  def destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
