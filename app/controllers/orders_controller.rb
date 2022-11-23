class OrdersController < ApplicationController
  before_action :set_order, only: :show

  def new
    @order = Order.new
    @super_power = SuperPower.find(params[:super_power_id])
    @order.super_power_id = @super_power.id
  end

  def create
    @order = Order.new
    @super_power = SuperPower.find(params[:super_power_id])
    @order.super_power_id = @super_power.id
    @order.user_id = current_user.id
    @order.owner_id = @super_power.user_id
    if @order.save
      flash[:notice] = 'Compra efetuada com sucesso!'
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def show
  end

  def shopping
    @orders = Order.where(user_id: current_user)

  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
