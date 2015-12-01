class CreateCookeds < ActiveRecord::Migration
  def change
    create_table :cookeds do |t|
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
    add_index :cookeds, :user_id
    add_index :cookeds, :recipe_id
    add_index :cookeds, [:user_id, :recipe_id], unique: true
  end
end
