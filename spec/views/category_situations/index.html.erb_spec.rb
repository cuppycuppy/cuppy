require 'rails_helper'

RSpec.describe "category_situations/index", type: :view do
  before(:each) do
    assign(:category_situations, [
      CategorySituation.create!(
        :category => 1,
        :situation_id => 2
      ),
      CategorySituation.create!(
        :category => 1,
        :situation_id => 2
      )
    ])
  end

  it "renders a list of category_situations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
