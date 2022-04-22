class AddForeignKeyAndReferencesInMenus < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :category_id, :integer
    add_foreign_key :menus, :categories
  end
end
