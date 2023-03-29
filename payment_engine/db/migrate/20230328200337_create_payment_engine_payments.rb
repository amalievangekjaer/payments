class CreatePaymentEnginePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_engine_payments do |t|
      t.integer :amount
      t.string :currency

      t.timestamps
    end
  end
end
