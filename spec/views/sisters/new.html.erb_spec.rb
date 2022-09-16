require 'rails_helper'

RSpec.describe "sisters/new", type: :view do
  before(:each) do
    assign(:sister, Sister.new(
      user_id: 1,
      book_id: 1
    ))
  end

  it "renders new sister form" do
    render

    assert_select "form[action=?][method=?]", sisters_path, "post" do

      assert_select "input[name=?]", "sister[user_id]"

      assert_select "input[name=?]", "sister[book_id]"
    end
  end
end
