class PostsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
    @posts = Post.all.order('created_at DESC')
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def post_params
    params.require(:post).permit(:author_name, :story)
  end
end
