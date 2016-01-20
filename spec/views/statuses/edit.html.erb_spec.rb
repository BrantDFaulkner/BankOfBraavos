require 'rails_helper'

RSpec.describe "statuses/edit", type: :view do
  before(:each) do
    @status = assign(:status, Status.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit status form" do
    render

    assert_select "form[action=?][method=?]", status_path(@status), "post" do

      assert_select "input#status_description[name=?]", "status[description]"
    end
  end
end
