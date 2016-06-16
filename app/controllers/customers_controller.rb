class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.valid?
      redirect_to root_path
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def show

  end

  private

  def customer_params
    params.require(:customer).permit(:name, :customercode,
    :address, :city, :state, :zipcode)
  end
end
