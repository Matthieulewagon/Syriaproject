class UsersController < ApplicationController
  def index
    @doctors = User.where(role: 'doctor')
  end

  def edit
    @user = OrgPerson.find(params[:id])

  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end
end
