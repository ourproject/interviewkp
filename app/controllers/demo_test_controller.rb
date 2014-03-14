class DemoTestController < ApplicationController
  def demo
  	count=params[:question_count].to_i
  	qid=params[:question_id].to_i
  	if(count==5)
  		qid=26
  	end
  	count=count-1
  	qid=qid+1
  	if count<1
  		redirect_to demo_test_thankyou_path
  	else
  		redirect_to demo_question_question_path(:question_id => qid, :question_count=>count)
  	end
  end
end
