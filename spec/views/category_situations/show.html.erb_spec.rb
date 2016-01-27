require 'rails_helper'

RSpec.describe "category_situations/show", type: :view do
  before(:each) do
    @category_situation = assign(:category_situation, CategorySituation.create!(
      :category => 1,
      :situation_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
