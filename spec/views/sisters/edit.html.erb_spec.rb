require 'rails_helper'

RSpec.describe "sisters/edit", type: :view do
  before(:each) do
    @sister = assign(:sister, Sister.create!(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders the edit sister form" do
    render

    assert_select "form[action=?][method=?]", sister_path(@sister), "post" do

      assert_select "input[name=?]", "sister[user_id]"

      assert_select "input[name=?]", "sister[book_id]"
    end
  end
end
