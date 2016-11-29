class Diagnose < ApplicationRecord
  belongs_to :request
  belongs_to :pharmacy
end
