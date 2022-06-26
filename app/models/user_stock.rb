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
class UserStock < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  validates :price, presence: true
  validates :volume, presence: true
  validates :user_id, uniqueness: { scope: :stock_id }
end
