class UserProduct < ApplicationRecord
  belongs_to :user_account
  belongs_to :product
end
