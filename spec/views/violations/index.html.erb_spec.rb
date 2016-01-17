require 'rails_helper'

RSpec.describe "violations/index", type: :view do
  before(:each) do
    assign(:violations, [
      Violation.create!(
        :member => nil,
        :desciption => "Desciption"
      ),
      Violation.create!(
        :member => nil,
        :desciption => "Desciption"
      )
    ])
  end

  it "renders a list of violations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Desciption".to_s, :count => 2
  end
end
