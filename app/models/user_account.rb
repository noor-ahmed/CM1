class UserAccount < ApplicationRecord
  has_one :product
  has_one :service
  has_many :bonus_accounts
  has_many :user_offers
  has_many :offers, through: :user_offers
  has_many :accumulators
  has_many :user_fnfs
  has_many :call_records
end
