require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :title => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_title[name=?]", "category[title]"

      assert_select "input#category_image[name=?]", "category[image]"
    end
  end
end
