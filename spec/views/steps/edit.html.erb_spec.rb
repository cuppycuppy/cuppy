require 'rails_helper'

RSpec.describe "steps/edit", type: :view do
  before(:each) do
    @step = assign(:step, Step.create!(
      :recipe_id => 1,
      :step => "MyText",
      :order => 1
    ))
  end

  it "renders the edit step form" do
    render

    assert_select "form[action=?][method=?]", step_path(@step), "post" do

      assert_select "input#step_recipe_id[name=?]", "step[recipe_id]"

      assert_select "textarea#step_step[name=?]", "step[step]"

      assert_select "input#step_order[name=?]", "step[order]"
    end
  end
end
