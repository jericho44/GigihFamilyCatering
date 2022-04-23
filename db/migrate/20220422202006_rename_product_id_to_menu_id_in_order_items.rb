class RenameProductIdToMenuIdInOrderItems < ActiveRecord::Migration[7.0]
  def change
    rename_column :order_items, :product_id, :menu_id
  end
end
