require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :title => "Title",
        :image => "Image"
      ),
      Category.create!(
        :title => "Title",
        :image => "Image"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
