class QuestionsController < ApplicationController
  def index
  	@questions = Question.answered
  	@question = Question.new
  end

  def show
  	@question = Question.find(params[:id])
  end
end
