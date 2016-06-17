class CustomersController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @customer = Customer.all
    @customers_grid = initialize_grid(Customer,
    order: 'customers.id',
    order_direction: 'asc'
    )
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

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(customer_params)
    if @customer.valid?
      redirect_to customers_path
    else
      render :edit, :status => :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end
  private

  def customer_params
    params.require(:customer).permit(:name, :customercode,
    :address, :city, :state, :zipcode)
  end
end
