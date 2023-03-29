class CreateCustomerEngineCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_engine_customers do |t|
      t.string :name
      t.date :birth_date
      t.string :birth_place
      t.string :email

      t.timestamps
    end
  end
end
