require 'rails_helper'

RSpec.describe "violation_types/new", type: :view do
  before(:each) do
    assign(:violation_type, ViolationType.new(
      :description => "MyString"
    ))
  end

  it "renders new violation_type form" do
    render

    assert_select "form[action=?][method=?]", violation_types_path, "post" do

      assert_select "input#violation_type_description[name=?]", "violation_type[description]"
    end
  end
end
