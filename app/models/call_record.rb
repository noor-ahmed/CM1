class CallRecord < ApplicationRecord
  belongs_to :user_account
  has_one :call_charge
end
