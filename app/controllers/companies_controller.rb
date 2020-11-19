class CompaniesController < ApplicationController
  before_action :move_to_index, only: [:new,:create]

  def index
    @companies = Company.includes(:user).order("created_at DESC")
    if user_signed_in?
      @user = current_user.id
    end
  end
  
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.valid?
      @company.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
    @activities = @company.activities.includes(:user).order("activity_day DESC")
  end

  def destroy
    company = Company.find(params[:id])
    if user_signed_in? && current_user.id == company.user_id
      company.destroy
    end
    redirect_to root_path
  end
  
  def search
    @companies = Company.search(params[:keyword])
    render :index
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def company_params
    params.require(:company).permit(:company_name,:phone_number,:address,:building_name,:nearest_station,:industry_id,:capital_stock_id,:employee_id,:status_id,:rank_id).merge(user_id: current_user.id)
  end
end
