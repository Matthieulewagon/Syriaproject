class Category < ApplicationRecord
  has_many :request
  validates :name, presence: true
  validates :urgency, presence: true
end
