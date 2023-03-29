module CustomerEngine
  class Customer < ApplicationRecord
    attr_accessor :payment_method, :location, :phone_number

    # (dummy) validations
    validates :name, :birth_date, :birth_place presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze unless defined?(VALID_EMAIL_REGEX)
    validates :email, format: { with: VALID_EMAIL_REGEX }, allow_blank: true
    validates :check_phone_number

    # (dummy) relations
    has_one :currency
    has_many :payments, :payment_methods
    belongs_to :location

    def check_phone_number
      # we could check phone number versus location or something here..
    end
  end
end
