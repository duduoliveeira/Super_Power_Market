class Review < ApplicationRecord
  belongs_to :user
  belongs_to :super_power
  validates :rating, inclusion: 0..5
  validates :comment, length: {minimum: 5}
  validates :rating, :comment, presence: true
end
