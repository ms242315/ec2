require 'rails_helper'

RSpec.describe "order_details/show", type: :view do
  before(:each) do
    assign(:order_detail, OrderDetail.create!(
      order: nil,
      book: nil,
      quantity: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
