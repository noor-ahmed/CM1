class UserService < ApplicationRecord
  belongs_to :user_account
  belongs_to :service
end
