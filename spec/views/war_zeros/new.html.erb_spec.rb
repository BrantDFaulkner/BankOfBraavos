require 'rails_helper'

RSpec.describe "war_zeros/new", type: :view do
  before(:each) do
    assign(:war_zero, WarZero.new(
      :war => nil,
      :participant => nil,
      :reason => "MyString"
    ))
  end

  it "renders new war_zero form" do
    render

    assert_select "form[action=?][method=?]", war_zeros_path, "post" do

      assert_select "input#war_zero_war_id[name=?]", "war_zero[war_id]"

      assert_select "input#war_zero_participant_id[name=?]", "war_zero[participant_id]"

      assert_select "input#war_zero_reason[name=?]", "war_zero[reason]"
    end
  end
end
