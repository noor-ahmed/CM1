class Offer < ApplicationRecord
  has_many :user_offers
  has_many :user_accounts, through: :user_offers
end
