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
      redirect_to root_path
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def show
    @work_instruction = WorkInstruction.find(params[:id])
  end

  def edit
    @work_instruction = WorkInstruction.find(params[:id])
  end

  def update
    @work_instruction = WorkInstruction.find(params[:id])
    @work_instruction.update_attributes(work_instruction_params)
    if @work_instruction.valid?
      redirect_to work_instructions_path
    else
      render :edit, :status => :unprocessable_entity
    end
  end

  def destroy
    @work_instruction = WorkInstruction.find(params[:id])
    @work_instruction.destroy
    redirect_to work_instructions_path
  end

  private

  def work_instruction_params
    params.require(:work_instruction).permit(:name, :workcode, :description)
  end
end
