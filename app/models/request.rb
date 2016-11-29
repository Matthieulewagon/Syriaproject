class Request < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :category
end
