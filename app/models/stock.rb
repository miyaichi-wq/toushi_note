# == Schema Information
#
# Table name: stocks
#
#  id          :bigint           not null, primary key
#  category    :integer          not null
#  code        :string           not null
#  description :text
#  name        :string           not null
#  sector      :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_stocks_on_code  (code) UNIQUE
#
class Stock < ApplicationRecord
  has_many :prices, dependent: :destroy
  has_many :user_stocks
  has_many :users, through: :user_stocks

  validates :category, presence: true
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
end
