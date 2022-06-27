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
FactoryBot.define do
  factory :stock do
    category { 1 }
    code { "MyString" }
    name { "MyString" }
    url { "MyString" }
    description { "MyText" }
    sector { "MyString" }
  end
end
