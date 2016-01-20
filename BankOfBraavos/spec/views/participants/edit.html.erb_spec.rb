require 'rails_helper'

RSpec.describe "participants/edit", type: :view do
  before(:each) do
    @participant = assign(:participant, Participant.create!(
      :member => nil,
      :war => nil
    ))
  end

  it "renders the edit participant form" do
    render

    assert_select "form[action=?][method=?]", participant_path(@participant), "post" do

      assert_select "input#participant_member_id[name=?]", "participant[member_id]"

      assert_select "input#participant_war_id[name=?]", "participant[war_id]"
    end
  end
end
