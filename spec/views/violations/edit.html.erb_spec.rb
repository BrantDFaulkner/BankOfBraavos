require 'rails_helper'

RSpec.describe "violations/edit", type: :view do
  before(:each) do
    @violation = assign(:violation, Violation.create!(
      :violation_type => nil,
      :particpant => nil
    ))
  end

  it "renders the edit violation form" do
    render

    assert_select "form[action=?][method=?]", violation_path(@violation), "post" do

      assert_select "input#violation_violation_type_id[name=?]", "violation[violation_type_id]"

      assert_select "input#violation_particpant_id[name=?]", "violation[particpant_id]"
    end
  end
end
