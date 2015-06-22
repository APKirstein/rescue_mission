class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :DESC)
  end

  def show
    @question = Question.where(id: params[:id]).first
  end

end
