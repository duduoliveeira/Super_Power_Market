class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @orders = Order.where(user_id: current_user)
    @super_powers = SuperPower.where(user_id: current_user)
  end
end
