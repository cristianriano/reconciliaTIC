class AnswersController < ApplicationController
  def new
  	@answer = Answer.new()
  end

  def create
  	@answer = Answer.new(question_id: params[:id], content: params[:answer][:content])
  	if @answer.save
  		flash[:success] = "Pregunta contestada. Gracias"
  		redirect_to questions_user_path(current_user)
  	else
  		flash[:danger] = "Error"
  		redirect_to new_answer_path(id: params.id)
  	end
  end
end
