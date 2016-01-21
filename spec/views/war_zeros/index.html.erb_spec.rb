require 'rails_helper'

RSpec.describe "war_zeros/index", type: :view do
  before(:each) do
    assign(:war_zeros, [
      WarZero.create!(
        :war => nil,
        :participant => nil,
        :reason => "Reason"
      ),
      WarZero.create!(
        :war => nil,
        :participant => nil,
        :reason => "Reason"
      )
    ])
  end

  it "renders a list of war_zeros" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Reason".to_s, :count => 2
  end
end
