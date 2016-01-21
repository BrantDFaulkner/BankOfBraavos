require 'rails_helper'

RSpec.describe "war_results/edit", type: :view do
  before(:each) do
    @war_result = assign(:war_result, WarResult.create!(
      :result => "MyString"
    ))
  end

  it "renders the edit war_result form" do
    render

    assert_select "form[action=?][method=?]", war_result_path(@war_result), "post" do

      assert_select "input#war_result_result[name=?]", "war_result[result]"
    end
  end
end
