class PostsController < ApplicationController
  def index
  end

  private
    def post_params
      params.require(:post).permit(:caption, :image)
    end
end
