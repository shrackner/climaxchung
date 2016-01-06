class PostsController < ApplicationController
  def new
  end
  
  def create
    @post = Post.new(post_params)
    @post.section = 'about'
    @post.pinned = false

    respond_to do |format|
      if @post.save
        # format.html { redirect_to @post }
        format.js {}
      end
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :section)
  end
end
