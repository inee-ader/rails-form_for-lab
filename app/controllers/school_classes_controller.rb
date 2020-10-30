class SchoolClassesController < ApplicationController
    
    before_action :find_class, only: [:show, :edit, :update]

    def new 
        #show new form
        @class = SchoolClass.new
    end 

    def create 
        @class = SchoolClass.create(safety)
        redirect_to school_class_path(@class)
    end

    def index 
        @classes = SchoolClass.all
    end

    def show
    end

    def edit
        #show edit form
    end

    def update
        @class.update(safety)
        redirect_to school_class_path(@class)
    end

    private

    def find_class
        @class = SchoolClass.find(params[:id])
    end

    def safety
        params.require(:school_class).permit(:title, :room_number)
    end
    
end