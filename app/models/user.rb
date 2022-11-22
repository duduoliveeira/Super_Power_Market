class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :super_powers
  has_many :user_orders, class_name: 'Order', foreign_key: 'user_id'
  has_many :owner_orders, class_name: 'Order', foreign_key: 'owner_id'
end
