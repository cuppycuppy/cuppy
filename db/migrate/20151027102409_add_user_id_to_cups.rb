class AddUserIdToCups < ActiveRecord::Migration
  def change
    add_column :cups, :user_id, :integer
  end
end
