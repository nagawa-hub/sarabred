class CompaniesController < ApplicationController
  before_action :authenticate_user!

  def index
    @companies = Company.includes(:user).order("id DESC")
  end
  
  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    if @company.valid?
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
    @orders = @company.orders.all
  end
    
  private
  def company_params
    params.require(:company)
          .permit(:company_name,
                  :company_short_name,
                  :phone_number,
                  :post_number,
                  :address,
                  :building_name,
                  :president,
                  :industry_id,
                  :capital_stock,
                  :employee)
          .merge(user_id: current_user.id)
  end
end
