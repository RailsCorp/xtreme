module Api
  class UsersController < ApplicationController
    before_action :set_user, only: %i[update destroy]
    def update
      if @user.update(user_params)
        render :show
      else
        raise "error"
      end
    end

    def destroy; end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(
        :email,
        :name,
        :password
      )
    end
  end
end
