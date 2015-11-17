require 'rails_helper'

RSpec.describe "situations/new", type: :view do
  before(:each) do
    assign(:situation, Situation.new(
      :name => "MyString",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new situation form" do
    render

    assert_select "form[action=?][method=?]", situations_path, "post" do

      assert_select "input#situation_name[name=?]", "situation[name]"

      assert_select "input#situation_icon[name=?]", "situation[icon]"

      assert_select "input#situation_image[name=?]", "situation[image]"
    end
  end
end
