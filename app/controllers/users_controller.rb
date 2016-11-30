class UsersController < ApplicationController
  def index
    @users = User.where(role: 'doctor')
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end
end
