class PostsController < ApplicationController

  # show all posts for all users
  def index
    @user = User.find(params[:user_id])
    @posts = Post.order('created_at DESC').limit(10)
      # @comment = Comment.new
      # @comments = Comment.all
  end

  # create new post
  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  # save new post to user
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_posts_path(@user.id)
  end

  # show all posts for individual user
  def user_posts
    @user = User.find(params[:user_id])
    @posts = @user.posts.all
  end

  # show specific post
  def show
     @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :image, :image_file, :user_id)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_params(post_params)

    redirect_to
  end

  def destroy
    @project = Project.find(params[:id])

    redirect_to user_posts_path(@user)
  end

end
