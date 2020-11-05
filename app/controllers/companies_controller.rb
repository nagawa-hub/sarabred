class CompaniesController < ApplicationController
  def index
    @companies = Company.all
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
    @activities = @company.activities
  end

  private
  def company_params
    params.require(:company).permit(:company_name,:phone_number,:address,:building_name,:nearest_station,:industry_id,:capital_stock_id,:employee_id,:status_id,:rank_id).merge(user_id: current_user.id)
  end
end
