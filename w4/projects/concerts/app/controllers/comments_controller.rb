class CommentsController < ApplicationController
	def create
		@concert = Concert.find_by(id: params[:concert_id])
		@comment = @project.comments.new (comment_param)
		if @comment.save
			redirect_to concert_path()
		end
	end

	private
	def comment_param
		params.require(:comment).permit(:text)
	end
end
