class Request < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :category
  validates :description, presence: true
  validates :status, presence: true

end
