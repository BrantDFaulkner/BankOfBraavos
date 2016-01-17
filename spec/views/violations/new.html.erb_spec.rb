require 'rails_helper'

RSpec.describe "violations/new", type: :view do
  before(:each) do
    assign(:violation, Violation.new(
      :member => nil,
      :desciption => "MyString"
    ))
  end

  it "renders new violation form" do
    render

    assert_select "form[action=?][method=?]", violations_path, "post" do

      assert_select "input#violation_member_id[name=?]", "violation[member_id]"

      assert_select "input#violation_desciption[name=?]", "violation[desciption]"
    end
  end
end
