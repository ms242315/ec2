require 'rails_helper'

RSpec.describe "order_details/edit", type: :view do
  let(:order_detail) {
    OrderDetail.create!(
      order: nil,
      book: nil,
      quantity: 1
    )
  }

  before(:each) do
    assign(:order_detail, order_detail)
  end

  it "renders the edit order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_detail_path(order_detail), "post" do

      assert_select "input[name=?]", "order_detail[order_id]"

      assert_select "input[name=?]", "order_detail[book_id]"

      assert_select "input[name=?]", "order_detail[quantity]"
    end
  end
end
