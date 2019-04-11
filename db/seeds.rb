# frozen_string_literal: true

1.upto(10) do |i|
  Item.create!(
    original_price: Faker::Number.decimal(2)
  )
  p "ITEM #{i} : créé"
end

1.upto(10) do |i|
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
  p "ITEM #{i} : créé"
end
