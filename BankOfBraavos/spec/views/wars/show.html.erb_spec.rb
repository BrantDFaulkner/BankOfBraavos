require 'rails_helper'

RSpec.describe "wars/show", type: :view do
  before(:each) do
    @war = assign(:war, War.create!(
      :opponent => "Opponent",
      :result => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Opponent/)
    expect(rendered).to match(/false/)
  end
end
