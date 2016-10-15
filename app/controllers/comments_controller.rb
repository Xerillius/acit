class CommentsController < ApplicationController
	before_action :find_commentable

	def new
		@comment = Comment.new
	end

	def create
		@comment = @commentable.comments.new(comment_params)
		@comment.name = current_user.name
		@comment.userid = current_user.id

		if @comment.save
			redirect_to :back, notice: 'Your comment was successfully posted!'
		else
			redirect_to :back, notice: "Your comment wasn't posted!"
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to root_path
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

	def find_commentable
		@commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
		@commentable = Blogpost.find_by_id(params[:blogpost_id]) if params[:blogpost_id]
	end
end