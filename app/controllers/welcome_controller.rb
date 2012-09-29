class WelcomeController < ApplicationController
  
  def index
    redirect_to storage_services_path if current_user
  end

end
