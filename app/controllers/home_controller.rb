class HomeController < ApplicationController
  def index
    @posts=Post.all
  end

  def new
  end

  def create
   @post=Post.new
   @post.what=params[:what]
   @post.how_much=params[:how_much]
   @post.how_many=params[:how_many]
   @post.buysell=params[:buysell]
   @post.save

   redirect_to '/'
  end
  def show
    @post=Post.find(params[:post_id])
    @index = 0
  end
  
  def destroy
    @post=Post.find(params[:post_id])
    @post.destroy

    redirect_to '/'
  end

  def edit
    @post=Post.find(params[:post_id]) 
  end

  def update
    @post=Post.find(params[:post_id])
    @post.what=params[:what]
    @post.how_much=params[:how_much]
    @post.how_many=params[:how_many]
    @post.buysell=params[:buysell]
    @post.save

    redirect_to '/'
  end
end
