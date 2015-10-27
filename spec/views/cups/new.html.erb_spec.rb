require 'rails_helper'

RSpec.describe "cups/new", type: :view do
  before(:each) do
    assign(:cup, Cup.new(
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders new cup form" do
    render

    assert_select "form[action=?][method=?]", cups_path, "post" do

      assert_select "input#cup_title[name=?]", "cup[title]"

      assert_select "input#cup_user_id[name=?]", "cup[user_id]"
    end
  end
end
