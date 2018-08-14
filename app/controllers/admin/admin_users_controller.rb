class AdminUsersController < ApplicationController
  def show; end

  def create; end

  def update; end

  def destroy; end

  private

  def admin_user_params
    params.require(:admin_user).permit(
      :email,
      :password
    )
  end
end
