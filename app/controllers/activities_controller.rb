class ActivitiesController < ApplicationController
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

  private
  def activity_params
    params.require(:activity).permit(:activity_day,:client_name,:memo).merge(user_id: current_user.id, company_id: @company.id)
  end

end