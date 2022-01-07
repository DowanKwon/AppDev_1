class HomeController < ApplicationController
  def index
    name = params[:name]
    @name = name ? name : 'dev-yakuza'
  end
  def form
  end
  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/list'
  end
  def list

  end
  def list
    @posts = Post.all
  end
  def modify
    @post = Post.find(params[:id])
  end
  def update
    post = Post.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/list'
  end
  def delete
    Post.destroy(params[:id])

    redirect_to '/list'
  end
end
