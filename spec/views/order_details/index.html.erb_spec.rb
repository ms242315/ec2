require 'rails_helper'

RSpec.describe "order_details/index", type: :view do
  before(:each) do
    assign(:order_details, [
      OrderDetail.create!(
        order: nil,
        book: nil,
        quantity: 2
      ),
      OrderDetail.create!(
        order: nil,
        book: nil,
        quantity: 2
      )
    ])
  end

  it "renders a list of order_details" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
