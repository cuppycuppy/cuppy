require 'rails_helper'

RSpec.describe "category_situations/new", type: :view do
  before(:each) do
    assign(:category_situation, CategorySituation.new(
      :category => 1,
      :situation_id => 1
    ))
  end

  it "renders new category_situation form" do
    render

    assert_select "form[action=?][method=?]", category_situations_path, "post" do

      assert_select "input#category_situation_category[name=?]", "category_situation[category]"

      assert_select "input#category_situation_situation_id[name=?]", "category_situation[situation_id]"
    end
  end
end
