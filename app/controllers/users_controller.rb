class UsersController < ApplicationController
  
  def guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password =  SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path
  end
  
end
