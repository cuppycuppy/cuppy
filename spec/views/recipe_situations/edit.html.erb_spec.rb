require 'rails_helper'

RSpec.describe "recipe_situations/edit", type: :view do
  before(:each) do
    @recipe_situation = assign(:recipe_situation, RecipeSituation.create!(
      :recipe_id => 1,
      :situation_id => 1
    ))
  end

  it "renders the edit recipe_situation form" do
    render

    assert_select "form[action=?][method=?]", recipe_situation_path(@recipe_situation), "post" do

      assert_select "input#recipe_situation_recipe_id[name=?]", "recipe_situation[recipe_id]"

      assert_select "input#recipe_situation_situation_id[name=?]", "recipe_situation[situation_id]"
    end
  end
end
