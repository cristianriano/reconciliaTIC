class QuestionsController < ApplicationController
  def index
  	@questions = Question.answered
  	@question = Question.new
  end

  def show
  end
end
