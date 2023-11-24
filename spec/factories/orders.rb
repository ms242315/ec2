FactoryBot.define do
  factory :order do
    product_id { 1 }
    count { 1 }
    address { "MyText" }
  end
end
