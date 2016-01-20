require 'rails_helper'

RSpec.describe "violation_descriptions/show", type: :view do
  before(:each) do
    @violation_description = assign(:violation_description, ViolationDescription.create!(
      :violation => nil,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Content/)
  end
end
