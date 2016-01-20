require 'rails_helper'

RSpec.describe "war_zeros/edit", type: :view do
  before(:each) do
    @war_zero = assign(:war_zero, WarZero.create!(
      :participant => nil,
      :description => "MyString"
    ))
  end

  it "renders the edit war_zero form" do
    render

    assert_select "form[action=?][method=?]", war_zero_path(@war_zero), "post" do

      assert_select "input#war_zero_participant_id[name=?]", "war_zero[participant_id]"

      assert_select "input#war_zero_description[name=?]", "war_zero[description]"
    end
  end
end
