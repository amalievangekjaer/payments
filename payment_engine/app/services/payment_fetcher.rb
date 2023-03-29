require_dependency "customer_fetcher"

module PaymentEngine
  # this service should contain our methods for fetching payment information
  # we want to implement single-responsibilityt
    class PaymentFetcher

      #   a challenge in retrieve_payments is the (potential) size of payments
      #   we could reduce our number of queries using

      #   eager loading
      #   payments = Payment.includes(:customer).all

      #   pagination
      #   payments = Payment.includes(:customer).paginate(page: params[:page], per_page: 50)

      #   or caching
      #   payments = Rails.cache.fetch("payments_all") do
      #    Payment.includes(:customer).all
      #   end

      def self.retrieve_payments
        payments = Payment.all
        payments.each do |payment|
          customer = CustomerFetcher.find_customer(payment.customer_id)
          payment.customer_name = customer.name

        end
        payments

      end


      def self.retrieve_payment(payment_id)
        payment = Payment.find(payment_id)
      end
    end
  end