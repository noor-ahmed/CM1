class UserAccount < ApplicationRecord
  belongs_to :product
  belongs_to :service
  has_many :bonus_accounts
  has_many :user_offers
  has_many :offers, through: :user_offers
  has_many :accumulators
  has_many :user_fnfs
  has_many :call_records
end
