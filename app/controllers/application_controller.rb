class ApplicationController < ActionController::Base
      
	 before_action :configure_permitted_parameters, if: :devise_controller?
	 
	 include ApplicationHelper

 private
 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end 

   def default_url_options() {privateIp: '172.17.0.7', containerPort: '3000', languageName: 'rails'}.merge(super) end
end
