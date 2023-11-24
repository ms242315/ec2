require 'rails_helper'

RSpec.describe "check_items/edit", type: :view do
  let(:check_item) {
    CheckItem.create!(
      book: nil,
      favorite: nil
    )
  }

  before(:each) do
    assign(:check_item, check_item)
  end

  it "renders the edit check_item form" do
    render

    assert_select "form[action=?][method=?]", check_item_path(check_item), "post" do

      assert_select "input[name=?]", "check_item[book_id]"

      assert_select "input[name=?]", "check_item[favorite_id]"
    end
  end
end
