class AboutController < ApplicationController
  def new
  end
  
  def index
    @posts = Post.where("section = 'about'")
    @post = Post.new
  end
end
