class SearchesController < ApplicationController
   def show
     @doctor  = Doctor.find(:address, :specialisation)

   end
