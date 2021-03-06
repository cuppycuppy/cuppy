require 'rails_helper'

RSpec.describe "recipe_situations/index", type: :view do
  before(:each) do
    assign(:recipe_situations, [
      RecipeSituation.create!(
        :recipe_id => 1,
        :situation_id => 2
      ),
      RecipeSituation.create!(
        :recipe_id => 1,
        :situation_id => 2
      )
    ])
  end

  it "renders a list of recipe_situations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
