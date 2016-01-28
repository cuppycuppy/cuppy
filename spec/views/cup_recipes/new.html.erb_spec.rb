require 'rails_helper'

RSpec.describe "cup_recipes/new", type: :view do
  before(:each) do
    assign(:cup_recipe, CupRecipe.new(
      :cup_id => 1,
      :recipe_id => 1
    ))
  end

  it "renders new cup_recipe form" do
    render

    assert_select "form[action=?][method=?]", cup_recipes_path, "post" do

      assert_select "input#cup_recipe_cup_id[name=?]", "cup_recipe[cup_id]"

      assert_select "input#cup_recipe_recipe_id[name=?]", "cup_recipe[recipe_id]"
    end
  end
end
