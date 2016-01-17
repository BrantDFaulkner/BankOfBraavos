require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :user_name => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_user_name[name=?]", "member[user_name]"

      assert_select "input#member_status[name=?]", "member[status]"
    end
  end
end
