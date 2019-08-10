class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at ASC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destory
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end

