class DemoQuestionController < ApplicationController
  def question
  	question_id=params[:question_id]
  	@count=params[:question_count]
  	@current_question=My_question.find(question_id)
  end
end
