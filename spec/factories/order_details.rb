FactoryBot.define do
  factory :order_detail do
    order { nil }
    book { nil }
    quantity { 1 }
  end
end
