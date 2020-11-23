class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @question = Question.new(question_params)
    @question.interview = @interview
    if @question.save
      redirect_to interview_path(@interview)
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:question)
  end
end
