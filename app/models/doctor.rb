class Doctor < ApplicationRecord
  belongs_to :user
  has_many :requests
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  # validates :skype_username, presence: true
  validates :address, presence: true
end


