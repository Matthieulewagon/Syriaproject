class PharmaciesController < ApplicationController
  def index
    @pharmacies = Pharmacy.all
  end
end
