class WorkInstructionsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @work_instruction = WorkInstruction.all
    @work_instructions_grid = initialize_grid(WorkInstruction,
    order: 'work_instructions.workcode',
    order_direction: 'asc'
    )
  end

  def new
    @work_instruction = WorkInstruction.new
  end

  def create
    @work_instruction = current_user.work_instructions.create(work_instruction_params)
    if @work_instruction.save
      flash[:success] = 'New instructions have been created!'
      redirect_to work_instructions_path
    else
      render :new, :status => unprocessable_entity
    end
  end

  private

  def work_instruction_params
    params.require(:work_instruction).permit(:name, :workcode, :description)
  end
end
