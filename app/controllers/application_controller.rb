class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :address, :phone_number, :skype_username, :role, :photo, :photo_cache, :document, :document_cache, :gender])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :address, :phone_number, :skype_username, :role, :status, :photo, :photo_cache, :gender])
  end

  def after_sign_in_path_for(user)
    if user.role == "doctor"
      return  doctor_dashboard_url
    end
    if user.role == "patient"
      return root_path
    end
  end
  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_locale
    locale = params[:locale].to_s.strip.to_sym
    I18n.locale = I18n.available_locales.include?(locale) ?
        locale :
        I18n.default_locale
  end
end
