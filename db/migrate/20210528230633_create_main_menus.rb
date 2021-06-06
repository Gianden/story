class CreateMainMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :main_menus do |t|

      t.timestamps
    end
  end
end
