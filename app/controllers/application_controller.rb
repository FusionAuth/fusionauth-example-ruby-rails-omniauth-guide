class ApplicationController < ActionController::Base

   before_action :authenticate_user!

   def authenticate_user!
     redirect_to '/login' unless session[:user]
   end

end
