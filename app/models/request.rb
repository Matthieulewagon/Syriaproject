class Request < ApplicationRecord
  belongs_to :patient, class_name: 'User'
  belongs_to :doctor, class_name: 'User'
  belongs_to :category
  validates :description, presence: true
  # validates :status, presence: true
  # validates :patient_id, presence: true
  # validates :category_id, presence: true
  validates :doctor, presence: true

  def approve
    self.status = "approved"
    self.save!
  end
end
