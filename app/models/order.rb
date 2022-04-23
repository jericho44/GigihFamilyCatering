class Order < ApplicationRecord
    has_many :order_items
    before_save :set_subtotal



    def subtotal
        order_items.collect { |order_items| order_items.valid? ? (order_items.quantity * order_items.menu.price) : 0 }.sum
    end



    private

    def set_subtotal
        self[:subtotal] = subtotal
    end

end
