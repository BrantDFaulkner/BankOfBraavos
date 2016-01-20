require 'rails_helper'

RSpec.describe "violations/new", type: :view do
  before(:each) do
    assign(:violation, Violation.new(
      :violation_type => nil,
      :particpant => nil
    ))
  end

  it "renders new violation form" do
    render

    assert_select "form[action=?][method=?]", violations_path, "post" do

      assert_select "input#violation_violation_type_id[name=?]", "violation[violation_type_id]"

      assert_select "input#violation_particpant_id[name=?]", "violation[particpant_id]"
    end
  end
end
