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
require 'rails_helper'

RSpec.describe Price, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
