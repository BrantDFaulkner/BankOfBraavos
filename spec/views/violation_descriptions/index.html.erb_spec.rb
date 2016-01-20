require 'rails_helper'

RSpec.describe "violation_descriptions/index", type: :view do
  before(:each) do
    assign(:violation_descriptions, [
      ViolationDescription.create!(
        :violation => nil,
        :content => "Content"
      ),
      ViolationDescription.create!(
        :violation => nil,
        :content => "Content"
      )
    ])
  end

  it "renders a list of violation_descriptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
