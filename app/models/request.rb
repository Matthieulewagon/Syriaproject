class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :description, presence: true
  # validates :status, presence: true
  # validates :patient_id, presence: true
  # validates :category_id, presence: true
  validates :doctor_id, presence: true

end
