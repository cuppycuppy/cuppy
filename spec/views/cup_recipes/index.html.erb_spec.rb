require 'rails_helper'

RSpec.describe "cup_recipes/index", type: :view do
  before(:each) do
    assign(:cup_recipes, [
      CupRecipe.create!(
        :cup_id => 1,
        :recipe_id => 2
      ),
      CupRecipe.create!(
        :cup_id => 1,
        :recipe_id => 2
      )
    ])
  end

  it "renders a list of cup_recipes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
