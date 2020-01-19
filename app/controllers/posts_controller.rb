class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]


  def index
    @posts = Post.all.order("created_at DESC")
    @users = User.all
    @post = Post.new
  end


  def show
    @users = User.all
  end

  def new
    @post = Post.new
    current_user = @current_user
  end


  def edit
  end



  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end


  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  #upvotes and downvotes(like/ dislike)
  def upvote
    @post.upvote_from current_user
    redirect_to posts_path    
  end

  def downvote
    @post.downvote_from current_user
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :image, :user_id)
  end
end
