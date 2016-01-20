require 'rails_helper'

RSpec.describe "participants/new", type: :view do
  before(:each) do
    assign(:participant, Participant.new(
      :member => nil,
      :war => nil
    ))
  end

  it "renders new participant form" do
    render

    assert_select "form[action=?][method=?]", participants_path, "post" do

      assert_select "input#participant_member_id[name=?]", "participant[member_id]"

      assert_select "input#participant_war_id[name=?]", "participant[war_id]"
    end
  end
end
