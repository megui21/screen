class VideosController < ApplicationController
  def index
    @interview = Interview.find(params[:interview_id])
    @videos = Video.all
  end

  def new
    @interview = Interview.find(params[:interview_id])
    @video = Video.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @video = Video.new(video_params)
    @video.interview = @interview
    if @video.save
      redirect_to interview_video_path(@interview.id, @video.id)
    else
      render 'new'
    end
  end

  def show
    @interview = Interview.find(params[:interview_id])
    @video = Video.find(params[:id])
    @review = Review.new
  end

  def videos
    @interview = Interview.all
  end

  private

  def video_params
    params.require(:video).permit(:name)
  end
end
