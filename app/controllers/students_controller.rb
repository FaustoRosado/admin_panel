class StudentsController < ApplicationController
  
  
  def index
    @students = Student.all
    @cohorts = Cohort.all
  end

  
  def show
    @student = Student.find(params[:id])
  end

  
  def new
    @student = Student.new
  end

  
  def create
    @student = Student.create(student_params)
  end

  
  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
  end

end

private

def student_params
    params.require(:student).permit(:first_name,:last_name,:age,:cohort_id,:phone_number,:email,:img_url)
end
  