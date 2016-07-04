class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @student = set_student
  end

  def activate
    @student = Student.find(params[:id])
    #puts "before switch: #{@student.active}"
    @student.switch
    @student.save
    #puts "after switch: #{@student.active}"
    redirect_to "/students/#{params[:id]}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end