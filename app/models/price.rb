# == Schema Information
#
# Table name: prices
#
#  id         :bigint           not null, primary key
#  date       :date             not null
#  price      :float            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stock_id   :bigint
#
# Indexes
#
#  index_prices_on_date      (date)
#  index_prices_on_stock_id  (stock_id)
#
# Foreign Keys
#
#  fk_rails_...  (stock_id => stocks.id)
#
class Price < ApplicationRecord
  belongs_to :stock
end
