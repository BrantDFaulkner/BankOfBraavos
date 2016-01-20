require 'rails_helper'

RSpec.describe "violation_types/show", type: :view do
  before(:each) do
    @violation_type = assign(:violation_type, ViolationType.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
