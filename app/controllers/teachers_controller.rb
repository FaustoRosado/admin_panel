class TeachersController < ApplicationController
  

  
  def index
    @teachers = Teacher.all
  end

  
  def show
  end

  
  def new
    @teacher = Teacher.new
  end

  
  def create
    @teacher = Teacher.create(post_params)
    redirect_to new_teacher_path

  end

  
  def edit 
  
  end

end


  private
    
    def post_params
      params.require(:teacher).permit(:first_name, :last_name, :age, :salary, :education, :email, :phone_number, :img_url)
    end

