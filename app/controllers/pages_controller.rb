class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_super_power, only: %i[show]

<<<<<<< HEAD

=======
  def home
    @super_powers = SuperPower.all
  end

  def show
  end

  private

  def set_super_power
    @super_power = SuperPower.find(params[:id])
  end

  def super_power_params
    params.require(:super_power).permit(:name, :description, :price)
  end
>>>>>>> 4fc78f1ab7e5545e2adfb4d102731ecb5163eae8
end
