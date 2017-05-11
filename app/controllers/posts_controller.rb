class PostsController < ApplicationController

	def show
		@post = Post.find(params[:id])
		@school = School.find(@post.school_id)
		@course = Course.find(@post.course_id)
	end

	def new
		@post = Post.new
		@course = Course.find(params[:course_id])
		@school = School.find(params[:school_id])
	end

	def create
		@user = User.find(session[:user_id]) if session[:user_id]
		@course = Course.find(params[:course_id])
		@school = School.find(params[:school_id])
		@post = Post.new(user_id: @user.id, school_id: @school.id, course_id: @course.id, title: params[:post][:title], description: params[:post][:description])
		@post.save
		redirect_to school_course_path(@school,@course)
	end

end