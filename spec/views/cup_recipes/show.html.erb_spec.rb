require 'rails_helper'

RSpec.describe "cup_recipes/show", type: :view do
  before(:each) do
    @cup_recipe = assign(:cup_recipe, CupRecipe.create!(
      :cup_id => 1,
      :recipe_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
