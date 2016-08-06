class ExerciseLogsController < ApplicationController

  def new
    @exercises = @program.exercises
    @exercise_log = ExerciseLog.new
  end

  def create
    @exercise = Exercise.find params[:exercise_id]
    @exercise_log = ExerciseLog.new exercise_logs_params
    @exercise_log.volume = ((exercise_logs_params[:reps]).to_i * (exercise_logs_params[:sets]).to_i * (exercise_logs_params[:weight]).to_i)
    @exercise_log.exercise = @exercise
    respond_to do |format|
      if @exercise_log.save
        format.html { redirect_to programs_path, notice: "Exercise Completed!" }
        format.js   { render :create_success }
      else
        format.html { render "exercises/index" }
        format.js   { render :create_failure }
      end
    end
  end

  def show
    @exercise_log = ExerciseLog.find params[:id]
  end

  private

  def exercise_logs_params
    params.require(:exercise_log).permit(:exercise_option_id, :reps, :weight, :sets, :volume)
  end

end
