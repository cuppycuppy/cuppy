require 'rails_helper'

RSpec.describe "user_situations/show", type: :view do
  before(:each) do
    @user_situation = assign(:user_situation, UserSituation.create!(
      :user_id => 1,
      :situation_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
