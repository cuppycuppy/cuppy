class RenameTitleColumnToCookeds < ActiveRecord::Migration
  def change
  	rename_column :cookeds, :tweet_id, :recipe_id
  end
end
