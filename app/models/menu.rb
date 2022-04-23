class Menu < ApplicationRecord
    has_many :categories, dependent: :destroy
    has_many :order_items
    has_many :order_items
end
