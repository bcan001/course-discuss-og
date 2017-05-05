class PostsController < ApplicationController

	before_action :set_post, only: [:new,:create]

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
      flash[:notice] = 'Post has successfully been created.'
			redirect_to school_course_path(@school,@course,@post,current_user)
		else
      flash[:notice] = 'Please enter all fields correctly.'
			render 'new'
		end
	end

	private

	def set_post
		@course = Course.find(params[:school_id])
		@school = School.find(params[:course_id])
	end

	def post_params
		params.require(:post).permit(:title, :description, :user_id, :course_id, :school_id)
	end
end