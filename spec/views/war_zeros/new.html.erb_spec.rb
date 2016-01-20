require 'rails_helper'

RSpec.describe "war_zeros/new", type: :view do
  before(:each) do
    assign(:war_zero, WarZero.new(
      :participant => nil,
      :description => "MyString"
    ))
  end

  it "renders new war_zero form" do
    render

    assert_select "form[action=?][method=?]", war_zeros_path, "post" do

      assert_select "input#war_zero_participant_id[name=?]", "war_zero[participant_id]"

      assert_select "input#war_zero_description[name=?]", "war_zero[description]"
    end
  end
end
