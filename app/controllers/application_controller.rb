class ApplicationController < ActionController::Base
include ApplicationHelper

before_action :configure_permitted_parameters, if: :devise_controller?
attr_accessor :username


    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password,:username) }
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation,:username) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation,:username) }
    end


end
