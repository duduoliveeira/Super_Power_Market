class SuperPower < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, :img, presence: true

end
