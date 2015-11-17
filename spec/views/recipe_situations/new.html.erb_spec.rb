require 'rails_helper'

RSpec.describe "recipe_situations/new", type: :view do
  before(:each) do
    assign(:recipe_situation, RecipeSituation.new(
      :recipe_id => 1,
      :situation_id => 1
    ))
  end

  it "renders new recipe_situation form" do
    render

    assert_select "form[action=?][method=?]", recipe_situations_path, "post" do

      assert_select "input#recipe_situation_recipe_id[name=?]", "recipe_situation[recipe_id]"

      assert_select "input#recipe_situation_situation_id[name=?]", "recipe_situation[situation_id]"
    end
  end
end
