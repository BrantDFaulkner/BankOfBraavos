require 'rails_helper'

RSpec.describe "violations/edit", type: :view do
  before(:each) do
    @violation = assign(:violation, Violation.create!(
      :member => nil,
      :desciption => "MyString"
    ))
  end

  it "renders the edit violation form" do
    render

    assert_select "form[action=?][method=?]", violation_path(@violation), "post" do

      assert_select "input#violation_member_id[name=?]", "violation[member_id]"

      assert_select "input#violation_desciption[name=?]", "violation[desciption]"
    end
  end
end
