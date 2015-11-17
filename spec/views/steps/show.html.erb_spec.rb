require 'rails_helper'

RSpec.describe "steps/show", type: :view do
  before(:each) do
    @step = assign(:step, Step.create!(
      :recipe_id => 1,
      :step => "MyText",
      :order => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
