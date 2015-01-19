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

    respond_to do |format|
      @post.save!
      format.html { redirect_to users_path }
      format.js
    end

  end

  def destroy
    @post = Post.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to users_path }
      format.js
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
