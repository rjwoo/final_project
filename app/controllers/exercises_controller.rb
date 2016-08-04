class ExercisesController < ApplicationController

  def new
    @program = Program.find params[:program_id]
    @exercise = Exercise.new
  end

  def create
    @program = Program.find params[:program_id]
    @exercise = Exercise.new exercise_params
    @exercise.program = @program
    if @exercise.save
      redirect_to program_path(@program)
    else
      render :new
    end
  end

  def show
    @program = Program.find params[:program_id]
    @exercise = Exercise.find params[:id]
  end

  def index
    @program = Program.find params[:program_id]
    @exercises = @program.exercises
  end

  private

  def exercise_params
    params.require(:exercise).permit(:exercise_option_id)
  end

end
