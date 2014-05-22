class CommentsController < ApplicationController

def show
  @comment = Comment.find(params[:id])
end

def create
  Comment.create(comment_params)

  redirect to

end

private

def response_params
  params.require(:comment).permit(:)
end


end
