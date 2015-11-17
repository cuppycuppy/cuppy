require 'rails_helper'

RSpec.describe "situations/show", type: :view do
  before(:each) do
    @situation = assign(:situation, Situation.create!(
      :name => "Name",
      :icon => "Icon",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/Image/)
  end
end
