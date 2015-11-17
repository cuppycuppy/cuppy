require 'rails_helper'

RSpec.describe "steps/new", type: :view do
  before(:each) do
    assign(:step, Step.new(
      :recipe_id => 1,
      :step => "MyText",
      :order => 1
    ))
  end

  it "renders new step form" do
    render

    assert_select "form[action=?][method=?]", steps_path, "post" do

      assert_select "input#step_recipe_id[name=?]", "step[recipe_id]"

      assert_select "textarea#step_step[name=?]", "step[step]"

      assert_select "input#step_order[name=?]", "step[order]"
    end
  end
end
