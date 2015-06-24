class AnswersController < ApplicationController

  # def index
  #   @question = Question.find(params[:question_id])
  #   @answer = Answer.where(question_id: params[:question_id])
  #   @answers = @question.answers
  # end

  # def new
  #   @question = Question.find(params[:question_id])
  #   @answer = Answer.new
  # end

  # def show
  #   @answer = Answer.find(params[:id])
  #   @question = @answer.question
  # end

  def create
    @errors = Array.new
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      redirect_to question_path(@question)
    else
      @answer.errors.messages.each do |key, error|
        @errors << (key.to_s + " " + error.first)
      end
      redirect_to question_path(@question)
    end
  end

  protected
  def answer_params
    params.require(:answer).permit(:body, params[:question_id])
  end

end
