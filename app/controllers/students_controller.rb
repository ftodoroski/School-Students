class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @schools = School.all
  end
  
  def create
     @student = Student.create!(student_params)
     redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    student = Student.find_by_id(params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end

  def destroy
    student = Student.find_by_id(params[:id])
    student.destroy
    redirect_to schools_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end
end
