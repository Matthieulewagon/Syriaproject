class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :requests
  has_many :pharmacies
  validates :username, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :first_name, presence: true, on: :update
  validates :address, presence: true, if: Proc.new { |user| user.role == 'doctor'}



  # validates :skype_username, presence: true
end
