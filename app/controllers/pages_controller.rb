class PagesController < ApplicationController
  def home
    @categories = Category.all
    @menus = Menu.all
    @order_item = current_order.order_items.new
  end

  def show
    @categories = Category.all
    @menu = Menu.find(params[:id])
  end

end
