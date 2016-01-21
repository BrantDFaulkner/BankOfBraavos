require 'rails_helper'

RSpec.describe "activity_statuses/edit", type: :view do
  before(:each) do
    @activity_status = assign(:activity_status, ActivityStatus.create!(
      :status => "MyString"
    ))
  end

  it "renders the edit activity_status form" do
    render

    assert_select "form[action=?][method=?]", activity_status_path(@activity_status), "post" do

      assert_select "input#activity_status_status[name=?]", "activity_status[status]"
    end
  end
end
