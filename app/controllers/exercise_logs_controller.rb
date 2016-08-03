class ExerciseLogsController < ApplicationController

  def new
    @program = Program.find params[:program_id]
    @exercise_log = ExerciseLog.new
  end

  def create
    @program = Program.find params[:program_id]
    @exercise_log = ExerciseLog.new exercise_log_params
    @exercise_log.program = @program
    if @exercise_log.save
      redirect_to program_exercise_logs_path(@program)
    else
      render :new
    end
  end

  def show
    @exercise_log = ExerciseLog.find params[:id]
  end

  def index
    @program = Program.find params[:program_id]
    @exercise_logs = ExerciseLog.all
  end

  private

  def exercise_log_params
    params.require(:exercise_log).permit(:reps, :weight, :exercise_id)
  end

end
