class UsersController < ApplicationController
  # まだ全然決めてない！
  def show
    @user = User.find(params[:id])
  end
end
