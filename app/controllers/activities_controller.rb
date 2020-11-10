class ActivitiesController < ApplicationController
  before_action :move_to_root
  
  def new
    @company = Company.find(params[:company_id])
    @activity = Activity.new
  end

  def create
    @company = Company.find(params[:company_id])
    @activity = Activity.new(activity_params)
    if @activity.valid?
      @activity.save
      redirect_to company_path(@company)
    else
      redirect_to action: :new
    end
  end

  def destroy
    @company = Company.find(params[:company_id])
    activity = @company.activities.find(params[:id])
    if current_user.id == activity.user_id
      activity.destroy
    end
    redirect_to root_path 
  end
  
  private
  def move_to_root
    unless user_signed_in?
      redirect_to controller: :companies, action: :index
    end
  end

  def activity_params
    params.require(:activity).permit(:activity_day,:client_name,:memo).merge(user_id: current_user.id, company_id: @company.id)
  end

end