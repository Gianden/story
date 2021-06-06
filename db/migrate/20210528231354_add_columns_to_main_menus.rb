class AddColumnsToMainMenus < ActiveRecord::Migration[6.1]
  def change
    add_column :main_menus, :state, :integer
    add_column :main_menus, :name, :string
  end
end
