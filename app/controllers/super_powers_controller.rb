class SuperPowersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_super_power, only: %i[show]

  def index
    @super_powers = SuperPower.all
  end

  def show
    @users = User.all
  end

  def ads
    @super_powers = SuperPower.where(user: current_user)
  end

  private

  def super_power_params
    params.require(:super_power).permit(:name, :description, :price)
  end

  def set_super_power
    @super_power = SuperPower.find(params[:id])
  end
end
