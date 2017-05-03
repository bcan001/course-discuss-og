class CoursesController < ApplicationController

	before_action :set_school

	def index
		@courses = Course.all
	end
	def show
		@course = Course.find(params[:id])
	end
	def new
		@course = Course.new
	end
	def create
		@course = Course.new(course_params)
		if @course.save
      flash[:notice] = 'Course has successfully been created.'
			redirect_to school_path(@school)
		else
      flash[:notice] = 'Please enter all fields correctly.'
			render 'new'
		end
	end
	def edit
		@course = Course.find(params[:id])
	end
	def update
		@course = Course.find(params[:id])
		if @course.update(course_params)
      flash[:notice] = 'Course has successfully been updated.'
			redirect_to school_path(@school)
		else
      flash[:notice] = 'Please enter all fields correctly.'
			render 'edit'
		end
	end
	def destroy
		@course = Course.find(params[:id])
		@course.destroy
    flash[:notice] = 'Course has been successfully deleted.'
		redirect_to school_path(@school)
	end

	private

	def set_school
		@school = School.find(params[:school_id])
	end

	def course_params
		params.require(:course).permit(:name, :description)
	end

end