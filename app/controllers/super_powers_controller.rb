class SuperPowersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_super_power, only: %i[show edit update]

  def index
    @super_powers = SuperPower.all
  end

  def show
    @users = User.all
   @related = SuperPower.all.shuffle.first(3)
  end

  def ads
    @super_powers = SuperPower.where(user: current_user)
  end

  def new
    @super_power = SuperPower.new
  end

  def create
    @super_power = SuperPower.new(super_power_params)
    @super_power.user_id = current_user.id
    if @super_power.save
      redirect_to ads_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @super_power = SuperPower.find(params[:id])
    @super_power.destroy
    redirect_to ads_path, notice: 'Super Power destroyed'
  end

  def edit
  end

  def update
    if @super_power.update(super_power_params)
      redirect_to @super_power, notice: "Super Power was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def super_power_params
    params.require(:super_power).permit(:name, :description, :price, :img)
  end

  def set_super_power
    @super_power = SuperPower.find(params[:id])
  end

end
