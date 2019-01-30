class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    

    @post=Post.new
    @users=User.all

  end

  def create
    @post = Post.create(
      title: params[:post][:title],
      content: params[:post][:content],
      user_id: params[:post][:user_id]
    )

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end



  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(
      title: params[:post][:title],
      content: params[:post][:content]
      # user_id: params[:post][:user_id]
    )

    redirect_to posts_path
  end

  def destroy

    post = Post.find(params[:id])

    post.destroy

    redirect_to '/posts'
  end
end
