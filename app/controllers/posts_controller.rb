class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      respond_to do |format|
        format.html { redirect_to @post }
        format.js {}
      end
    end
  end
  
  def create
    @post = Post.new(post_params)
    @

    if @post.save
      respond_to do |format|
        format.html { redirect_to @post }
        format.js {}
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html { redirect_to posts_path }
      format.js {}
    end
    
    @post.destroy
  end
      
  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
