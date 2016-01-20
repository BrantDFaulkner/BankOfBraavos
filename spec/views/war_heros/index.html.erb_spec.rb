require 'rails_helper'

RSpec.describe "war_heros/index", type: :view do
  before(:each) do
    assign(:war_heros, [
      WarHero.create!(
        :participant => nil,
        :description => "Description"
      ),
      WarHero.create!(
        :participant => nil,
        :description => "Description"
      )
    ])
  end

  it "renders a list of war_heros" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
