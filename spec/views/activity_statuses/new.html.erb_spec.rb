require 'rails_helper'

RSpec.describe "activity_statuses/new", type: :view do
  before(:each) do
    assign(:activity_status, ActivityStatus.new(
      :status => "MyString"
    ))
  end

  it "renders new activity_status form" do
    render

    assert_select "form[action=?][method=?]", activity_statuses_path, "post" do

      assert_select "input#activity_status_status[name=?]", "activity_status[status]"
    end
  end
end
