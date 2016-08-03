class ExerciseLogsController < ApplicationController

  def create
    @exercise = Exercise.find params[:exercise_id]
    @exercise_log.exercise = @exercise
    if @exercise_log.save
      redirect_to @exercise, notice: "Exercise Log Created"
    else
      redirect_to @exercise, alert: "Cannot Create Exercise Log"
    end
  end

end
