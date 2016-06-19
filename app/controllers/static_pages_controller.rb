class StaticPagesController < ApplicationController
  def index
    @customers_grid = initialize_grid(Customer,
    order: 'customers.id',
    order_direction: 'asc'
    )
    @work_instructions_grid = initialize_grid(WorkInstruction,
    order: 'work_instructions.workcode',
    order_direction: 'asc')
  end
end
