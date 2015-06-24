class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :DESC)
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @errors = Array.new
    @question = Question.create(question_params)
    if @question.save
      redirect_to root_path
    else
      @question.errors.messages.each do |key, error|
        @errors << (key.to_s + " " + error.first)
      end
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @errors = Array.new
    @question = Question.find(params[:id])
    @question.update(question_params)

    if @question.save
      redirect_to question_path
    else
      @question.errors.messages.each do |key, error|
        @errors << (key.to_s + " " + error.first)
      end
      render question_path
    end
  end

  protected
  def question_params
    params.require(:question).permit(:title, :description)
  end

end
