class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false
      t.references :owner, null: false
      t.references :super_power, null: false, foreign_key: true

      t.timestamps
    end

    add_foreign_key :orders, :users, column: :user_id
    add_foreign_key :orders, :users, column: :owner_id
  end
end
