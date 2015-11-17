require 'rails_helper'

RSpec.describe "situations/index", type: :view do
  before(:each) do
    assign(:situations, [
      Situation.create!(
        :name => "Name",
        :icon => "Icon",
        :image => "Image"
      ),
      Situation.create!(
        :name => "Name",
        :icon => "Icon",
        :image => "Image"
      )
    ])
  end

  it "renders a list of situations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
