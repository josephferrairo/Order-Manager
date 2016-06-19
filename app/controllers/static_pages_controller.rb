class StaticPagesController < ApplicationController
  def index
    @customers_grid = initialize_grid(Customer,
    order: 'customers.id',
    order_direction: 'asc'
    )
  end
end
