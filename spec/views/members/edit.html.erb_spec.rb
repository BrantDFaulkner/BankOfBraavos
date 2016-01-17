require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :user_name => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_user_name[name=?]", "member[user_name]"

      assert_select "input#member_status[name=?]", "member[status]"
    end
  end
end
