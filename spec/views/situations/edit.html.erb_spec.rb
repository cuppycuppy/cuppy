require 'rails_helper'

RSpec.describe "situations/edit", type: :view do
  before(:each) do
    @situation = assign(:situation, Situation.create!(
      :name => "MyString",
      :icon => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit situation form" do
    render

    assert_select "form[action=?][method=?]", situation_path(@situation), "post" do

      assert_select "input#situation_name[name=?]", "situation[name]"

      assert_select "input#situation_icon[name=?]", "situation[icon]"

      assert_select "input#situation_image[name=?]", "situation[image]"
    end
  end
end
