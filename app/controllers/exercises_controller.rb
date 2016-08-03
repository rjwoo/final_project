class ExercisesController < ApplicationController

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new
    @exercise.save
    redirect_to program_path(@program)
  end

  def index
  end

end
