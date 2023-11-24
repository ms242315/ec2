require 'rails_helper'

RSpec.describe "favorites/index", type: :view do
  before(:each) do
    assign(:favorites, [
      Favorite.create!(),
      Favorite.create!()
    ])
  end

  it "renders a list of favorites" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
