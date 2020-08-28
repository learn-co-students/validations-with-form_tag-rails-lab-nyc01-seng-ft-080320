class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    @updated = Post.new(post_params)

    if @updated.valid?
      @post.update(post_params)
      redirect_to post_path(@post)
    else
      @updated.id = @post.id
      @post = @updated
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
