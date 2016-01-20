require 'rails_helper'

RSpec.describe "wars/new", type: :view do
  before(:each) do
    assign(:war, War.new(
      :opponent => "MyString",
      :result => false
    ))
  end

  it "renders new war form" do
    render

    assert_select "form[action=?][method=?]", wars_path, "post" do

      assert_select "input#war_opponent[name=?]", "war[opponent]"

      assert_select "input#war_result[name=?]", "war[result]"
    end
  end
end
