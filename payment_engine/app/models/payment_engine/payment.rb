module PaymentEngine
  class Payment < ApplicationRecord
    attr_accessor :customer_name, :customer_email

    # (dummy) validations
    validates :amount, :currency, presence: true
    validates :amount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }

    validate :check_payment_status

    # (dummy) relations
    has_one :customer
    has_many :payment_updates
    belongs_to :payment_receiver
  end
end
