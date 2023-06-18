class MainController < ApplicationController
  before_action :authenticate_user!
  
    def getBlog
      @all_posts = Post.includes(:user, :categories, comments: :post).all
      @all_categories = Category.all
      @selectedCategories = params[:selectedCategories].present? ? Category.where(id: params[:selectedCategories]) : []
    end
  
    def like
      post = Post.find(params[:post_id])
    likes = post.likes.pluck(:users_id)

    if !likes.include?(current_user.id)
    like = Like.create(likeTime: DateTime.now, post: post, users_id: current_user.id)
    else
    like = post.likes.find_by(users_id: current_user.id)
    like.destroy if like
    end
      redirect_to request.referrer
    end
  
    def comment
      post = Post.find(params[:post_id])
      comment = Comment.create(commentText: params[:commentText], commentTime: DateTime.now, post: post, users_id: params[:current_user_id])
      redirect_to request.referrer
    end
  
    def deleteComment
        comment = Comment.find(params[:comment_id])
        comment.destroy
        redirect_to request.referrer
      end
  end
  