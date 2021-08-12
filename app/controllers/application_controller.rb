class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:updates, keys:[:first_name, :last_name, :url, :image, :image_cache])
        devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
    end

end