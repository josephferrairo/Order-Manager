class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @customer = Customer.all
    @customers_grid = initialize_grid(Customer)
  end
  def new
    @customer = Customer.new
  end

  def create
    @customer = current_user.customers.create(customer_params)
    if @customer.valid?
      redirect_to customers_path
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def show
    @customer = Customer.find(params[:id])
    @customer_grid = initialize_grid(Customer)
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :customercode,
    :address, :city, :state, :zipcode)
  end
end
