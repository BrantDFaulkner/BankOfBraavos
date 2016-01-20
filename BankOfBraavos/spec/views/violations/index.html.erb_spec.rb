require 'rails_helper'

RSpec.describe "violations/index", type: :view do
  before(:each) do
    assign(:violations, [
      Violation.create!(
        :violation_type => nil,
        :particpant => nil
      ),
      Violation.create!(
        :violation_type => nil,
        :particpant => nil
      )
    ])
  end

  it "renders a list of violations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
