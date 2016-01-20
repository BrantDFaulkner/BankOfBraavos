require 'rails_helper'

RSpec.describe "violation_descriptions/new", type: :view do
  before(:each) do
    assign(:violation_description, ViolationDescription.new(
      :violation => nil,
      :content => "MyString"
    ))
  end

  it "renders new violation_description form" do
    render

    assert_select "form[action=?][method=?]", violation_descriptions_path, "post" do

      assert_select "input#violation_description_violation_id[name=?]", "violation_description[violation_id]"

      assert_select "input#violation_description_content[name=?]", "violation_description[content]"
    end
  end
end
