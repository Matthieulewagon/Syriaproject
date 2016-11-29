class Diagnose < ApplicationRecord
  belongs_to :request
  belongs_to :pharmacy
  validates :description, presence: true
  validates :status, presence: true
  validates :delivery_date, presence: true
  validates :pharmacy_id, presence: true
  validates :request_id, presence: true
end
