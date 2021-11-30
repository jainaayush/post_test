class PostsController < ApplicationController
	before_action :user_log_in
	def post
		p params[:status]
		if params[:status] == "private"
			@post = Post.where("user_id=? and option = ?",@user.id,"private")
		else
			@post = Post.all.order(created_at:"DESC")
		end
	end

	def create
		post = Post.create(post:params[:post],user_id:@user.id,option:params[:status])
		redirect_to posts_path
	end

	def edit
		@post = Post.find(params[:id])
		p @post
	end

	def update
		p params[:id]
		post = Post.find(params[:id])
		post.update(post:params[:post])
		redirect_to posts_path
	end

	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to posts_path
	end

	def private_post
		p params[:status]
		if params[:status] == "private"
			@post = Post.where(option:"private").where(user_id:@user.id)
			p @post
		else
			@post = Post.all.order(created_at:"DESC")
		end
	end
end
