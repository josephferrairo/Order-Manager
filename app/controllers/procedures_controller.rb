class ProceduresController < ApplicationController
  def index
    @procedure = Procedure.all
  end

  def show
    @procedure = Procedure.find(params[:id])
  end

  def new
    @procedure = Procedure.new
    @work_instructions = WorkInstruction.all
  end

  def create
    @procedure = current_user.procedures.create(procedure_params)
    if @procedure.valid?
      flash[:success] = 'Procedure has been created!'
      redirect_to root_path
    else
      render :new, :status => :unprocessable_entity
      @work_instructions = WorkInstruction.all
    end
  end

  private

  def procedure_params
    params.require(:procedure).permit(:name, :code)
  end
end
