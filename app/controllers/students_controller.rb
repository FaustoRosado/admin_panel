class StudentsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @students = Student.all
    @students = Student.order("id ASC")
    @cohorts = Cohort.all
  end

  
  def show
    @student = Student.find(params[:id])
  end

  
  def new
    @student = Student.new
    @cohorts = Cohort.all
  end

  
  def create
    @student = Student.create(student_params)
    redirect_to :controller => 'students', :action => 'index'
  end

  
  def edit
    @student = Student.find(params[:id])
    @cohorts = Cohort.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to :controller => 'students', :action => 'show'
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to :controller => 'students', :action => 'index'
end

end

private

def student_params
    params.require(:student).permit(:first_name,:last_name,:age,:cohort_id,:phone_number,:email,:img_url)
end
  