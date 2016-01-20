require 'rails_helper'

RSpec.describe "violation_types/edit", type: :view do
  before(:each) do
    @violation_type = assign(:violation_type, ViolationType.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit violation_type form" do
    render

    assert_select "form[action=?][method=?]", violation_type_path(@violation_type), "post" do

      assert_select "input#violation_type_description[name=?]", "violation_type[description]"
    end
  end
end
