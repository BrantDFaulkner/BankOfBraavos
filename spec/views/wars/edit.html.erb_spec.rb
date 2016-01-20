require 'rails_helper'

RSpec.describe "wars/edit", type: :view do
  before(:each) do
    @war = assign(:war, War.create!(
      :opponent => "MyString",
      :result => false
    ))
  end

  it "renders the edit war form" do
    render

    assert_select "form[action=?][method=?]", war_path(@war), "post" do

      assert_select "input#war_opponent[name=?]", "war[opponent]"

      assert_select "input#war_result[name=?]", "war[result]"
    end
  end
end
