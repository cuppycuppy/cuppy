class CreateUserSituations < ActiveRecord::Migration
  def change
    create_table :user_situations do |t|
      t.integer :user_id
      t.integer :situation_id

      t.timestamps
    end
  end
end
