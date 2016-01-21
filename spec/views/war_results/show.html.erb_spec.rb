require 'rails_helper'

RSpec.describe "war_results/show", type: :view do
  before(:each) do
    @war_result = assign(:war_result, WarResult.create!(
      :result => "Result"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Result/)
  end
end
