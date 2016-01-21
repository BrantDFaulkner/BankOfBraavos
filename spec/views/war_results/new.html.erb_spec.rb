require 'rails_helper'

RSpec.describe "war_results/new", type: :view do
  before(:each) do
    assign(:war_result, WarResult.new(
      :result => "MyString"
    ))
  end

  it "renders new war_result form" do
    render

    assert_select "form[action=?][method=?]", war_results_path, "post" do

      assert_select "input#war_result_result[name=?]", "war_result[result]"
    end
  end
end
