class ProceduresController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def index
    @procedure = Procedure.all
  end

  def show
    @procedure = Procedure.find(params[:id])
  end

  def new
    @procedure = Procedure.new
    @work_instructions = WorkInstruction.all
    @procedure.work_instruction_ids = []

  end

  def create
    @procedure = current_user.procedures.create(procedure_params)

    if @procedure.valid?
      flash[:success] = 'Procedure has been created!'
      redirect_to root_path
    else
      @work_instructions = WorkInstruction.all
      render :new, :status => :unprocessable_entity
      @work_instruction_ids.save
    end
  end

  private

  def procedure_params
    params.require(:procedure).permit( :name, :code, [:work_instruction_ids => []])
  end
end
