require 'rails_helper'

RSpec.describe "recipe_situations/show", type: :view do
  before(:each) do
    @recipe_situation = assign(:recipe_situation, RecipeSituation.create!(
      :recipe_id => 1,
      :situation_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
