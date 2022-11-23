class Order < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  belongs_to :super_power
end
