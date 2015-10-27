require 'rails_helper'

RSpec.describe "cups/show", type: :view do
  before(:each) do
    @cup = assign(:cup, Cup.create!(
      :title => "Title",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
  end
end
