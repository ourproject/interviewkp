class InterviewSessionController < ApplicationController
  def interview
  	interview_id=params[:interview_id]
  	question_id=params[:question_id]
  	@user_id=session[:user_id]

    if(question_id == "-1")
      total_questions=Interview.find_by_sql("select number_of_questions from interviews where id="+interview_id)
      session[:question_count]=total_questions.first.number_of_questions
    end

    count=session[:question_count].to_i
    
    if(count==0)
    	#add a view page saying interview complete
    	redirect_to candidates_index_url
    else

    
    count=count-1
    session[:question_count]=count
    
    sql="select set_by from interviews where id="+interview_id
  	test_owner=Interview.find_by_sql(sql)


  	sql="select id from interview_questions where created_by='"+test_owner.first.set_by+"' and id>"+question_id+" limit 1"
  	question_id=InterviewQuestion.find_by_sql(sql)
    session[:question_id]=question_id.first.id
    session[:interview_id]=interview_id
  	redirect_to new_clip_url(:interview_id => interview_id, :question_id => question_id.first.id, :user_id => @user_id)
  end
  end
end
