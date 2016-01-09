class AboutController < ApplicationController
  def new
  end
  
  def index
    @posts = Post.all
    @post = Post.new
  end
end
