json.extract! order_detail, :id, :order_id, :book_id, :quantity, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
