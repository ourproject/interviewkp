json.array!(@final_decisions) do |final_decision|
  json.extract! final_decision, :id, :user_id, :interview_id, :decision
  json.url final_decision_url(final_decision, format: :json)
end
