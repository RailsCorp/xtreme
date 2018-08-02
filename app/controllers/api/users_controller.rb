module Api
  class UsersController < ApplicationController
    before_action :set_user, only: %i[update , destroy]
    def update
      if @user.update
      else
        raise "error"
      end
    end

    def destroy; end

    private

    def set_user
      @user = User.find(params[:id])
    end
  end
end
