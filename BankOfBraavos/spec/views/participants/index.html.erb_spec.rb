require 'rails_helper'

RSpec.describe "participants/index", type: :view do
  before(:each) do
    assign(:participants, [
      Participant.create!(
        :member => nil,
        :war => nil
      ),
      Participant.create!(
        :member => nil,
        :war => nil
      )
    ])
  end

  it "renders a list of participants" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
