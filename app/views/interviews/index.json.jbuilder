json.array!(@interviews) do |interview|
  json.extract! interview, :id, :set_by, :number_of_questions, :duration, :cutoff
  json.url interview_url(interview, format: :json)
end
