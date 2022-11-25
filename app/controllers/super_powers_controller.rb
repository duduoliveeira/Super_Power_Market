class SuperPowersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_super_power, only: %i[show edit update]

  def index
    if params[:query].present?
      @super_powers = SuperPower.search_by_name_and_description(params[:query])
      skip_policy_scope
    else
      @super_powers = policy_scope(SuperPower)
    end
  end

  def show
    @review = Review.new
    @users = User.all
    @related = SuperPower.all.sample(3)
  end

  def ads
    @super_powers = policy_scope(SuperPower).where(user: current_user)
  end

  def new
    @super_power = SuperPower.new
    authorize @super_power
  end

  def create
    @super_power = SuperPower.new(super_power_params)
    @super_power.user_id = current_user.id
    authorize @super_power
    if @super_power.save
      redirect_to ads_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @super_power = SuperPower.find(params[:id])
    authorize @super_power
    if @super_power.destroy
      redirect_to ads_path, notice: 'Super Power destroyed'
    else
      render "new", status: :unprocessable_entity
    end
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
    params.require(:super_power).permit(:name, :description, :price, :img, :photo)
  end

  def set_super_power
    @super_power = SuperPower.find(params[:id])
    authorize @super_power
  end

end
