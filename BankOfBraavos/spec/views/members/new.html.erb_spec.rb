require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :user_name => "MyString",
      :rank => nil,
      :status => nil
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_user_name[name=?]", "member[user_name]"

      assert_select "input#member_rank_id[name=?]", "member[rank_id]"

      assert_select "input#member_status_id[name=?]", "member[status_id]"
    end
  end
end
