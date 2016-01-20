require 'rails_helper'

RSpec.describe "ranks/new", type: :view do
  before(:each) do
    assign(:rank, Rank.new(
      :title => "MyString"
    ))
  end

  it "renders new rank form" do
    render

    assert_select "form[action=?][method=?]", ranks_path, "post" do

      assert_select "input#rank_title[name=?]", "rank[title]"
    end
  end
end
