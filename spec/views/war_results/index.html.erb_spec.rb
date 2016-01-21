require 'rails_helper'

RSpec.describe "war_results/index", type: :view do
  before(:each) do
    assign(:war_results, [
      WarResult.create!(
        :result => "Result"
      ),
      WarResult.create!(
        :result => "Result"
      )
    ])
  end

  it "renders a list of war_results" do
    render
    assert_select "tr>td", :text => "Result".to_s, :count => 2
  end
end
