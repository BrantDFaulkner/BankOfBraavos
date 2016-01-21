require 'rails_helper'

RSpec.describe "activity_statuses/show", type: :view do
  before(:each) do
    @activity_status = assign(:activity_status, ActivityStatus.create!(
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Status/)
  end
end
