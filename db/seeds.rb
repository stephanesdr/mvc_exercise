# frozen_string_literal: true

1.upto(10) do |i|
  Item.create!(
    original_price: Faker::Number.decimal(2),
    name: Faker::Games::Pokemon.name
  )
  p "ITEM #{i} : créé"
end

1.upto(10) do |i|
  users = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
  users.skip_confirmation!
  users.save
  p "ITEM #{i} : créé"
end

el = 1
while el <= 10
  Profile.create!(
    user_id: el
  )
  p "profile #{el}"
  el += 1
end
