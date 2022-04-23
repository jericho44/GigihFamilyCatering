class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :subtotal
      t.integer :total

      t.timestamps
    end
  end
end
