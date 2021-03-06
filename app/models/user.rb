class User < ApplicationRecord
  # after_create :sign_in_patient
  # Include default devise modules. Others available are:

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,  :timeoutable, :omniauthable,
          omniauth_providers: [:facebook]

  mount_uploader :photo, PhotoUploader
  mount_uploader :document, DocumentUploader

  has_many :requests_as_doctor, class_name: 'Request', foreign_key: 'doctor_id'
  has_many :requests_as_patient, class_name: 'Request', foreign_key: 'patient_id'
  has_many :pharmacies
  has_many :chat_sessions
  has_many :chat_sessions, through: :requests

  # validates :username, presence: true
  # validates :last_name, presence: true
  # validates :first_name, presence: true
  # validates :skype_username, presence: true
  # validates :address, presence: true, if: Proc.new { |user| user.role == 'doctor'}

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save!
    end

    return user
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # def active_for_authentication?
  #   super && approved?
  # end

  # def inactive_message
  #   if !approved?
  #     :not_approved
  #   else
  #     super # Use whatever other message
  #   end
  # end
  # def sign_in_patient
  #   self.update(approved: true) if self.role == "patient"
  # end
  # def active_for_authentication?
  #   super && approved?
  # end

  # def inactive_message
  #   if !approved?
  #     :not_approved
  #   else
  #     super # Use whatever other message
  #   end
  # end

end
