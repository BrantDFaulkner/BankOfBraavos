require 'rails_helper'

RSpec.describe "ranks/index", type: :view do
  before(:each) do
    assign(:ranks, [
      Rank.create!(
        :title => "Title"
      ),
      Rank.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of ranks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
