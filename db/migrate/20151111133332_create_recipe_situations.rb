class CreateRecipeSituations < ActiveRecord::Migration
  def change
    create_table :recipe_situations do |t|
      t.integer :recipe_id
      t.integer :situation_id

      t.timestamps
    end
  end
end
