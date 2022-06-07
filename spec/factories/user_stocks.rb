# == Schema Information
#
# Table name: user_stocks
#
#  id         :bigint           not null, primary key
#  price      :float            not null
#  volume     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stock_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_stocks_on_stock_id              (stock_id)
#  index_user_stocks_on_user_id               (user_id)
#  index_user_stocks_on_user_id_and_stock_id  (user_id,stock_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (stock_id => stocks.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :user_stock do
    volume { 1 }
    price { 1.5 }
    user { nil }
    stock { nil }
  end
end
