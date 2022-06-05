# == Schema Information
#
# Table name: prices
#
#  id         :bigint           not null, primary key
#  date       :date             not null
#  price      :float            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_prices_on_date  (date)
#
FactoryBot.define do
  factory :price do
    date { "2022-06-05" }
    price { 1.5 }
  end
end
