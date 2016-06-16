class CustomersController < ApplicationController
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
    @customer = Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :customercode,
    :address, :city, :state, :zipcode)
  end
end
