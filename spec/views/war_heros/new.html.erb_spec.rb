require 'rails_helper'

RSpec.describe "war_heros/new", type: :view do
  before(:each) do
    assign(:war_hero, WarHero.new(
      :war => nil,
      :participant => nil,
      :reason => "MyString"
    ))
  end

  it "renders new war_hero form" do
    render

    assert_select "form[action=?][method=?]", war_heros_path, "post" do

      assert_select "input#war_hero_war_id[name=?]", "war_hero[war_id]"

      assert_select "input#war_hero_participant_id[name=?]", "war_hero[participant_id]"

      assert_select "input#war_hero_reason[name=?]", "war_hero[reason]"
    end
  end
end
