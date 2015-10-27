require 'rails_helper'

RSpec.describe "cups/index", type: :view do
  before(:each) do
    assign(:cups, [
      Cup.create!(
        :title => "Title",
        :user_id => 1
      ),
      Cup.create!(
        :title => "Title",
        :user_id => 1
      )
    ])
  end

  it "renders a list of cups" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
