class StudentsController < ApplicationController

    before_action :find_kid, only: [:show, :edit, :update]

    def new
        #shows new form
        @student = Student.new
    end

    def create 
        @student = Student.create(safety)
        redirect_to student_path(@student)
    end

    def index 
        @students = Student.all
    end

    def show 
    end

    def edit
        #shows edit form
    end

    def update 
        @student.update(safety)
        redirect_to student_path(@student)
    end

    private

    def find_kid
        @student = Student.find(params[:id])
    end

    def safety
        params.require(:student).permit(:first_name, :last_name)
    end

end