class Product < ApplicationRecord
  has_one :fnf_item
  has_one :community
  has_many :user_accounts
end
