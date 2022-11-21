class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_super_power, only: %i[show]

  def home
    @super_powers = SuperPower.all
  end

  def show
    @users = User.all
  end

  private

  def super_power_params
    params.require(:super_power).permit(:name, :description, :price)
  end

  def set_super_power
    @super_power = SuperPower.find(params[:id])
  end
end
