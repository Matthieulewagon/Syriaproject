class Patient < ApplicationRecord
  belongs_to :user
  has_many :requests
    validates :last_name, presence: true
validates :first_name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
end

