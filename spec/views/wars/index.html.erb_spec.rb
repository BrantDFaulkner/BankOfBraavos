require 'rails_helper'

RSpec.describe "wars/index", type: :view do
  before(:each) do
    assign(:wars, [
      War.create!(
        :opponent => "Opponent",
        :result => false
      ),
      War.create!(
        :opponent => "Opponent",
        :result => false
      )
    ])
  end

  it "renders a list of wars" do
    render
    assert_select "tr>td", :text => "Opponent".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
