require 'rails_helper'

RSpec.describe "violation_types/index", type: :view do
  before(:each) do
    assign(:violation_types, [
      ViolationType.create!(
        :description => "Description"
      ),
      ViolationType.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of violation_types" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
