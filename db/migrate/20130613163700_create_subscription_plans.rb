class CreateSubscriptionPlans < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.string :plan_type
      t.decimal :price
      t.integer :newspaper_id

      t.timestamps
    end
  end
end
