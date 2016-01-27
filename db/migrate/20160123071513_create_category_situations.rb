class CreateCategorySituations < ActiveRecord::Migration
  def change
    create_table :category_situations do |t|
      t.integer :category
      t.integer :situation_id

      t.timestamps
    end
  end
end
