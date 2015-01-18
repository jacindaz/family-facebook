class PostsController < ApplicationController

  def index
    render :'users/index'    
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

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
