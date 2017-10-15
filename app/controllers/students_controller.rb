class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.active = !@student.active #changes the active status when called
    @student.save #updates the status of the student
    redirect_to student_path(@student) #goes back to the individual student page
    # redirect "/students/:id"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
