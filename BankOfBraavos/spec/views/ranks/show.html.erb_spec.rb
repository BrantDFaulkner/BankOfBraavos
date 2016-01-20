require 'rails_helper'

RSpec.describe "ranks/show", type: :view do
  before(:each) do
    @rank = assign(:rank, Rank.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
