require 'rails_helper'

RSpec.describe "user_situations/edit", type: :view do
  before(:each) do
    @user_situation = assign(:user_situation, UserSituation.create!(
      :user_id => 1,
      :situation_id => 1
    ))
  end

  it "renders the edit user_situation form" do
    render

    assert_select "form[action=?][method=?]", user_situation_path(@user_situation), "post" do

      assert_select "input#user_situation_user_id[name=?]", "user_situation[user_id]"

      assert_select "input#user_situation_situation_id[name=?]", "user_situation[situation_id]"
    end
  end
end
