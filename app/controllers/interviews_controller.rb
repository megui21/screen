class InterviewsController < ApplicationController

  def index
    @interviews = Interview.all
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    @interview.user = current_user
    if @interview.save
      redirect_to interview_path(@interview)
    end
  end

  def show
    @interview = Interview.find(params[:id])
    @question = Question.new
  end

private

  def interview_params
    params.require(:interview).permit(:open_date, :final_date, :name, :company)
  end
end
