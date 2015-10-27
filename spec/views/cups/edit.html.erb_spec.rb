require 'rails_helper'

RSpec.describe "cups/edit", type: :view do
  before(:each) do
    @cup = assign(:cup, Cup.create!(
      :title => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit cup form" do
    render

    assert_select "form[action=?][method=?]", cup_path(@cup), "post" do

      assert_select "input#cup_title[name=?]", "cup[title]"

      assert_select "input#cup_user_id[name=?]", "cup[user_id]"
    end
  end
end
