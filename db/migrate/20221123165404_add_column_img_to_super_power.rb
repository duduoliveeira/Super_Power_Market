class AddColumnImgToSuperPower < ActiveRecord::Migration[7.0]
  def change
    add_column :super_powers, :img, :text
  end
end
