json.array!(@interview_questions) do |interview_question|
  json.extract! interview_question, :id, :question, :created_by
  json.url interview_question_url(interview_question, format: :json)
end
