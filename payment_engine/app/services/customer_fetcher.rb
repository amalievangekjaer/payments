require 'customer_engine'


module PaymentEngine
    class CustomerFetcher
      def self.find_customer(customer_id)
        CustomerEngine::Customer.find(customer_id)
      end
    end
  end
