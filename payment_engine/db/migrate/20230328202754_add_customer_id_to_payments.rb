class AddCustomerIdToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payment_engine_payments, :customer_id, :integer
  end
end
