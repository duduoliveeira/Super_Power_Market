class SuperPower < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
                  against: %i[name description],
                  ignoring: :accents,
                  associated_against: {
                    user: [:name]
                  },
                  using: { tsearch: { prefix: true } }
  belongs_to :user
  validates :name, :description, :price, presence: true
end
