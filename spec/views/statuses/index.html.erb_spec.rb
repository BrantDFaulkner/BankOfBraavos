require 'rails_helper'

RSpec.describe "statuses/index", type: :view do
  before(:each) do
    assign(:statuses, [
      Status.create!(
        :description => "Description"
      ),
      Status.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of statuses" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
