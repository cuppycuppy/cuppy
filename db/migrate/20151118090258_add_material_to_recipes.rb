class AddMaterialToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :material, :text
  end
end
