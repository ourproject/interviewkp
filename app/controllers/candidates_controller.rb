class CandidatesController < ApplicationController
  layout "candidatelayout"
  def index
  end

  def show_tests
  	
  	@tests=Test.all

  end

  def show_results
  	sql="select r.marks, t.set_by, t.number_of_questions, r.pass_or_fail  from test_results r join tests t where r.test_id=t.id AND r.user_id="+session[:user_id].to_s
  	@results=TestResult.find_by_sql(sql)
    
  end

end
