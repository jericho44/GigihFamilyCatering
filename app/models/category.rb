class Category < ApplicationRecord
    has_and_belongs_to_many  :menu
    validates :name, presence: true, length: { maximum: 50 }
end
