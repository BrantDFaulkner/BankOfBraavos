require 'rails_helper'

RSpec.describe "violations/show", type: :view do
  before(:each) do
    @violation = assign(:violation, Violation.create!(
      :violation_type => nil,
      :particpant => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
