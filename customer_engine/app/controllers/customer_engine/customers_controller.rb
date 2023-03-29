require_dependency "customer_engine/application_controller"
require_dependency "customer_fetcher"

module CustomerEngine
  class CustomersController < ApplicationController

    def index
      @customers = CustomerFetcher.retrieve_customers
      render json: @customers.as_json(only: [:id, :name, :email])
    end

    def show
      @customers = CustomerFetcher.retrieve_customer(params[:id])
      render json: @customer.as_json(only: [:id, :name, :email])
    end


    private
      def customer_params
        params.require(:customer).permit(:name, :birth_date, :birth_place, :email)
      end
  end
end
