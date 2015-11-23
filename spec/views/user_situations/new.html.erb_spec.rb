require 'rails_helper'

RSpec.describe "user_situations/new", type: :view do
  before(:each) do
    assign(:user_situation, UserSituation.new(
      :user_id => 1,
      :situation_id => 1
    ))
  end

  it "renders new user_situation form" do
    render

    assert_select "form[action=?][method=?]", user_situations_path, "post" do

      assert_select "input#user_situation_user_id[name=?]", "user_situation[user_id]"

      assert_select "input#user_situation_situation_id[name=?]", "user_situation[situation_id]"
    end
  end
end
