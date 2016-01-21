require 'rails_helper'

RSpec.describe "activity_statuses/index", type: :view do
  before(:each) do
    assign(:activity_statuses, [
      ActivityStatus.create!(
        :status => "Status"
      ),
      ActivityStatus.create!(
        :status => "Status"
      )
    ])
  end

  it "renders a list of activity_statuses" do
    render
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
