require 'rails_helper'

RSpec.describe "war_zeros/show", type: :view do
  before(:each) do
    @war_zero = assign(:war_zero, WarZero.create!(
      :participant => nil,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
  end
end
