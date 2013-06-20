class HomeController < ApplicationController
  def index
    @posts = Post.paginate(:page => params[:page])
  end

  def vote_up
    begin
      current_user.vote_for(@post = Post.find(params[:id]))
      render :nothing => true, :status => 200
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end
  
end
