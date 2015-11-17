require 'rails_helper'

RSpec.describe "steps/index", type: :view do
  before(:each) do
    assign(:steps, [
      Step.create!(
        :recipe_id => 1,
        :step => "MyText",
        :order => 2
      ),
      Step.create!(
        :recipe_id => 1,
        :step => "MyText",
        :order => 2
      )
    ])
  end

  it "renders a list of steps" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
