class ApplicationController < ActionController::API
    def show
        @post = Post.find(params[:id])
      
        if stale?(last_modified: @post.updated_at)
          render json: @post
        end
      end
end
