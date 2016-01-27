require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :title => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_title[name=?]", "category[title]"

      assert_select "input#category_image[name=?]", "category[image]"
    end
  end
end
