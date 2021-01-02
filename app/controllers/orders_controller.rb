class OrdersController < ApplicationController
  before_action :set_company, only: [:new,:create]
  def new
    @order = Order.new
  end

  def create
    @order = @company.orders.create(order_params)
    if @order.valid?
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private
  def set_company
    @company = Company.find(params[:company_id])
  end
  def order_params
    params.require(:order)
          .permit(:order_name,
                  :start_date,
                  :end_date,
                  :order_comment,
                  :order_price,
                  :order_cost,
                  :order_profit,
                  )
          .merge(user_id: current_user.id)
  end
end
