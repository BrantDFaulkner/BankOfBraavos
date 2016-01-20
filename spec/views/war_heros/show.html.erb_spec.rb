require 'rails_helper'

RSpec.describe "war_heros/show", type: :view do
  before(:each) do
    @war_hero = assign(:war_hero, WarHero.create!(
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
