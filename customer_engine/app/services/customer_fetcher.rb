
module CustomerEngine
  # this service should contain our methods for fetching customer information
  # we want to implement single-responsibility
    class CustomerFetcher

      def self.retrieve_customers
        Customer.all
      end
      def self.retrieve_customer(customer_id)
        Customer.find(customer_id)
      end
    end
  end