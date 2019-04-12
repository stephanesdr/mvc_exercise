# frozen_string_literal: true

1.upto(10) do |i|
  Item.create!(
    original_price: Faker::Number.decimal(2),
    name: Faker::Games::Pokemon.name.unique.name
  )
  p "ITEM #{i} : créé"
end

# 1.upto(10) do |i|
#   User.create!(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(8)
#   )
#   p "ITEM #{i} : créé"
# end

# el = 1
# while el <= 10
#   Profile.create!(
#     user_id: el
#   )
#   p "profile #{el}"
#   el += 1
# end

# Admin.create(
#   email: 'sdrmvc@yopmail.com',
#   password: 'password',
#   password_confirmation: 'password',
# )
