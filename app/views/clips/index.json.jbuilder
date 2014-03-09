json.array!(@clips) do |clip|
  json.extract! clip, :id, :user_id, :interview_id, :question_id, :url
  json.url clip_url(clip, format: :json)
end
