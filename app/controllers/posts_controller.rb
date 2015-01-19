class PostsController < ApplicationController

  def index
    render :'users/index'
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @all_posts = Post.all

    binding.pry

    if @post.save
      flash[:notice] = 'Post saved!'
      redirect_to users_path
    else
      flash[:notice] = 'Post not saved'
      render :'users/index'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to users_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
