# frozen_string_literal: true

class Users::Sessions::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    # If authentication fails, it won't reach this point
    # You can add custom actions or redirect on successful login
  rescue ActionController::InvalidAuthenticityToken, Devise::InvalidEmail
    # Handle invalid authenticity token or email here
    redirect_to root_path, alert: 'Unauthorized access'
  rescue ActionController::ParameterMissing
    # Handle missing parameters here
    redirect_to root_path, alert: 'Unauthorized access'
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
