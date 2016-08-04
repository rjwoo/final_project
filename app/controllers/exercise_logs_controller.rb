class ExerciseLogsController < ApplicationController

  def new
    @program = Program.find params[:program_id]
    @exercises = @program.exercises
    @exercise_log = ExerciseLog.new
  end

  def create
    byebug
    @program = Program.find params[:program_id]
    @exercises = @program.exercises
    @exercise_log = ExerciseLog.new exercise_logs_params
    @exercise_log.save
    redirect_to programs_path
  end

  private

  def exercise_logs_params
    params.require(:exercise_log).permit(:exercise_option_id, :reps, :weight, :sets)
  end

end
