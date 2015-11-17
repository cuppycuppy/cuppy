class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.text :step
      t.integer :order

      t.timestamps
    end
  end
end
