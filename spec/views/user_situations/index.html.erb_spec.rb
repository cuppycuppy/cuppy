require 'rails_helper'

RSpec.describe "user_situations/index", type: :view do
  before(:each) do
    assign(:user_situations, [
      UserSituation.create!(
        :user_id => 1,
        :situation_id => 2
      ),
      UserSituation.create!(
        :user_id => 1,
        :situation_id => 2
      )
    ])
  end

  it "renders a list of user_situations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
