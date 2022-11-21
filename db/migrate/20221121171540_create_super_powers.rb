class CreateSuperPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :super_powers do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
