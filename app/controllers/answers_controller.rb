class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def show
    @question_answers = Answer.all
  end

  def create
    @errors = Array.new
    @answer = Answer.create!(answer_params)
    if @answer.save
      redirect_to root_path
    else
      @answer.errors.messages.each do |key, error|
        @errors << (key.to_s + " " + error.first)
      end
      redirect_to questions_path
    end
  end

  protected
  def answer_params
    params.require(:answer).permit(:body, params[:question_id])
  end

end
