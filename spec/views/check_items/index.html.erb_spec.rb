require 'rails_helper'

RSpec.describe "check_items/index", type: :view do
  before(:each) do
    assign(:check_items, [
      CheckItem.create!(
        book: nil,
        favorite: nil
      ),
      CheckItem.create!(
        book: nil,
        favorite: nil
      )
    ])
  end

  it "renders a list of check_items" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
