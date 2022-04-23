class OrderItemsController < ApplicationController

    def create
        @order = current_order
        @order_item = @order.order_items.new(order_item_params)
        @order.save
        session[:order_id] = @order.id
        redirect_to root_path
    end

    def update
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.update(order_item_params)
        @order_items = current_order.order_items
        redirect_to cards_show_url
    end

    def destroy
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.destroy
        @order_items = @order.order_items
        redirect_to cards_show_url
    end

    private
    def order_item_params
        params.require(:order_item).permit(:quantity, :menu_id)
    end
end
