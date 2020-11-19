class UsersController < ApplicationController
  def show
    unless user_signed_in?
      redirect_to controller: :companies, action: :index
    else
      @user = User.find(params[:id])
      @activities = Activity.where(user_id: current_user.id).includes(:company).order("created_at DESC")
    end
  end
end
