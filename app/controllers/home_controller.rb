class HomeController < ApplicationController
  def index
    @users = User.all
    @post = Post.all.order(created_at: :desc)
    @postnew = Post.new
    @comments = Comment.all
    #where(user: @post)

    @commentsnew = Comment.new
    #@postedit = Post.find(params[:id])
  end
end
