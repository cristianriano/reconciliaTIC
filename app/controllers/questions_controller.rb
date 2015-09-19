class QuestionsController < ApplicationController
  def index
  	@questions = Question.answered
  	@question = Question.new
  end

  def show
  	@question = Question.find(params[:id])
  end

  def create
  	@question = Question.new(question_params)
  	if @question.save
  		flash[:success] = "Pregunta enviada"
  		redirect_to questions_url
  	else
  		flash[:danger] = "Error"
  		redirect_to questions_url
  	end
  end

  private

      def question_params
      	params.require(:question).permit(:email, :year, :content, :zone)
      end
end
