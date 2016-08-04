class ExerciseLogsController < ApplicationController

  def new
    @exercises = @program.exercises
    @exercise_log = ExerciseLog.new
  end

  def create
    @exercise = Exercise.find params[:exercise_id]
    @exercise_log = ExerciseLog.new exercise_logs_params
    if @exercise_log.save
      redirect_to programs_path, notice: "Exercise Completed!"
    else
      render :new
    end
  end

  private

  def exercise_logs_params
    params.require(:exercise_log).permit(:exercise_option_id, :reps, :weight, :sets)
  end

end
