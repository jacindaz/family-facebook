class UsersController < ApplicationController

  def index
    @user = current_user
    @post = Post.new
    @all_posts = Post.all
  end

  def show
    render 'index'
  end

end
