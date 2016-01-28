require 'rails_helper'

RSpec.describe "cup_recipes/edit", type: :view do
  before(:each) do
    @cup_recipe = assign(:cup_recipe, CupRecipe.create!(
      :cup_id => 1,
      :recipe_id => 1
    ))
  end

  it "renders the edit cup_recipe form" do
    render

    assert_select "form[action=?][method=?]", cup_recipe_path(@cup_recipe), "post" do

      assert_select "input#cup_recipe_cup_id[name=?]", "cup_recipe[cup_id]"

      assert_select "input#cup_recipe_recipe_id[name=?]", "cup_recipe[recipe_id]"
    end
  end
end
