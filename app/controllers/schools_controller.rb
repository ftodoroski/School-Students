class SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def show
    @school = School.find_by_id(params[:id]) 
    @students = @school.students #This is what makes the associaion between the school and students
    # You can also make it manually where you are iterating through the Student.all and just selectign ids that match yours   
  end
end
