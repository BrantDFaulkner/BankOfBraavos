require 'rails_helper'

RSpec.describe "violation_descriptions/edit", type: :view do
  before(:each) do
    @violation_description = assign(:violation_description, ViolationDescription.create!(
      :violation => nil,
      :content => "MyString"
    ))
  end

  it "renders the edit violation_description form" do
    render

    assert_select "form[action=?][method=?]", violation_description_path(@violation_description), "post" do

      assert_select "input#violation_description_violation_id[name=?]", "violation_description[violation_id]"

      assert_select "input#violation_description_content[name=?]", "violation_description[content]"
    end
  end
end
