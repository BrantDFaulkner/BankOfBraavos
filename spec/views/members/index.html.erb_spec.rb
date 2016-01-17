require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :user_name => "User Name",
        :status => "Status"
      ),
      Member.create!(
        :user_name => "User Name",
        :status => "Status"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
