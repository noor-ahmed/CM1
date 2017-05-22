class UserOffer < ApplicationRecord
  belongs_to :user_account
  belongs_to :offer
end
