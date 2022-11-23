class SuperPower < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, presence: true
end
