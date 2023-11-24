class Favorite < ApplicationRecord
  has_many :check_items, dependent: :destroy

  def add_book(book_id)
    check_items.find_or_initialize_by(book_id: book_id)
  end
end
