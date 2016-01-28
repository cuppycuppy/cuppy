class CreateCupRecipes < ActiveRecord::Migration
  def change
    create_table :cup_recipes do |t|
      t.integer :cup_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
