class Product < ApplicationRecord
  belongs_to :fnf_item
  belongs_to :community
  has_many :user_accounts
end
