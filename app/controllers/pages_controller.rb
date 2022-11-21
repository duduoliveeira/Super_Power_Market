class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_super_power, only: :show


  def home
    @super_power = SuperPower.all
  end

  def show
    @users = User.all
  end

  private

  def set_super_power
    @super_power = SuperPower.find(params[:id])
  end
end
