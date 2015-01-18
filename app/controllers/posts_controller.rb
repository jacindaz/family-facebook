class PostsController < ApplicationController

  def create
    binding.pry
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      flash[:notice] = 'Post saved!'
      redirect_to root_path
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
