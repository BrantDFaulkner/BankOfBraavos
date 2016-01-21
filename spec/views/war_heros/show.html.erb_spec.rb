require 'rails_helper'

RSpec.describe "war_heros/show", type: :view do
  before(:each) do
    @war_hero = assign(:war_hero, WarHero.create!(
      :war => nil,
      :participant => nil,
      :reason => "Reason"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Reason/)
  end
end
