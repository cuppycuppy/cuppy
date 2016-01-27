require 'rails_helper'

RSpec.describe "category_situations/edit", type: :view do
  before(:each) do
    @category_situation = assign(:category_situation, CategorySituation.create!(
      :category => 1,
      :situation_id => 1
    ))
  end

  it "renders the edit category_situation form" do
    render

    assert_select "form[action=?][method=?]", category_situation_path(@category_situation), "post" do

      assert_select "input#category_situation_category[name=?]", "category_situation[category]"

      assert_select "input#category_situation_situation_id[name=?]", "category_situation[situation_id]"
    end
  end
end
