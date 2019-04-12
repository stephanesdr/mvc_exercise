# frozen_string_literal: true

# == Schema Information
#
# Table name: categorizations
#
#  id          :bigint(8)        not null, primary key
#  position    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  item_id     :integer
#
# Indexes
#
#  index_categorizations_on_item_id_and_category_id  (item_id,category_id)
#

FactoryBot.define do
  factory :categorization do
    item_id { 1 }
    category_id { 1 }
    position { 1 }
  end
end
