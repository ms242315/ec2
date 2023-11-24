json.extract! book, :id, :title, :author, :published, :showing, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
