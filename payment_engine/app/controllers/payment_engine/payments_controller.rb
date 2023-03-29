require_dependency "payment_engine/application_controller"
require_dependency "payment_fetcher"


module PaymentEngine
  class PaymentsController < ApplicationController
    # we could add some permission logic
    before_action :validate_access
    before_action :set_payment, only: [:show, :edit, :update, :destroy]


    # we want to use our payment service
    def index
      @payments = PaymentFetcher.retrieve_payments
    end

    def show
      @payment = PaymentFetcher.retrieve_payment(params[:id])
    end


    # we want to put the rest of our methods in a suitable service as well
    def new
      @payment = Payment.new
    end

    def edit
    end

    def create
      @payment = Payment.new(payment_params)

      if @payment.save
        redirect_to @payment, notice: 'Payment was successfully created.'
      else
        render :new
      end
    endc

    def update
      if @payment.update(payment_params)
        redirect_to @payment, notice: 'Payment was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @payment.destroy
      redirect_to payments_url, notice: 'Payment was successfully destroyed.'
    end

    private
      def set_payment
        @payment = Payment.find(params[:id])
      end

      def payment_params
        params.require(:payment).permit(:amount, :currency, :customer_id)
      end

      def validate_access
        if authorized_user?
          return true
        end
        access_forbidden
      end
  end
end
