class ReviewsController < ApplicationController
  def new
    @interview = Interview.find(params[:interview_id])
    @video = Video.find(params[:video_id])
    @video.interview = @interview
    @review.video = @video
    @review = Review.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @video = Video.find(params[:video_id])
    @video.interview = @interview
    @review = Review.new(review_params)
    @review.video = @video
    @review.user = current_user
    if @review.save
      redirect_to interview_video_path(@interview.id, @video.id)
    else
      render "videos/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
