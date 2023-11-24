require 'rails_helper'

RSpec.describe "check_items/show", type: :view do
  before(:each) do
    assign(:check_item, CheckItem.create!(
      book: nil,
      favorite: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
