class OrdersController < ApplicationController
  before_action :set_order, only: :show

  def new
    @order = Order.new
    @super_power = SuperPower.find(params[:super_power_id])
    @order.super_power_id = @super_power.id
    authorize @order
  end

  def create
    @order = Order.new
    @super_power = SuperPower.find(params[:super_power_id])
    @order.super_power_id = @super_power.id
    @order.user_id = current_user.id
    @order.owner_id = @super_power.user_id
    authorize @order
    if @order.save
      flash[:notice] = 'Congratulations, you have a new Super Power!'
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show
    authorize @order
  end

  def shopping
    @orders = policy_scope(Order).where(user: current_user)
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
