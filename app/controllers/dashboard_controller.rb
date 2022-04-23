class DashboardController < ApplicationController
  def index
    @categories = Category.all
    @menus = Menu.all
    @order_items = current_order.order_items
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    

    @order = Order.find(params[:id])
    @order.update(status_params)
    redirect_to dashboard_index_url
  end


  private
  def status_params
    params.require(@order.status).permit(:status)
  end
end
