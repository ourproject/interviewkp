class Clip < ActiveRecord::Base
	attr_accessible :user_id, :question_id, :interview_id, :url
end
