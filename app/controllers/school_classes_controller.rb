class SchoolClassesController < ApplicationController
    def create
        @schoolclass = SchoolClass.create(school_classes_params)
        redirect_to school_class_path(@schoolclass)
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(school_classes_params)
        @schoolclass.save
        redirect_to school_class_path(@schoolclass)
    end

    private

    def school_classes_params
        # byebug
        params.require(:school_class).permit(:title, :room_number)
    end
end
