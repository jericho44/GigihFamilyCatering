class AddReferencesInMenus < ActiveRecord::Migration[7.0]
  def change
    remove_column :menus, :category_id
    add_reference :menus, :category, foreign_key: true
  end
end
