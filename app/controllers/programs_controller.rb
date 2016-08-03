class ProgramsController < ApplicationController
  before_action :find_program, only: [:show, :edit, :update, :destroy]
  before_action :program_params, only: [:create, :update]

  def new
    @program = Program.new
    @exercise = Exercise.new
  end

  def create
    @program = Program.new program_params
    @exercise = Exercise.new
    @exercise = @program.exercise
    if @program.save
      redirect_to program_path(@program)
    else
      render :new
    end
  end

  def index
    @programs = Program.all
  end

  def show
    @exercises = @program.exercises
  end

  def edit
  end

  def update
    if @program.update program_params
      redirect_to program_path(@program), notice: "Program Updated!"
    else
      render :edit
    end
  end

  def destroy
    @program.destroy
    redirect_to programs_path, notice: "Program Deleted!"
  end

  private

  def find_program
    @program = Program.find params[:id]
  end

  def program_params
    params.require(:program).permit(:title, :exercise_id)
  end

end
