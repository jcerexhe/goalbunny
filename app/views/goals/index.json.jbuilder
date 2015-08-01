json.array!(@goals) do |goal|
  json.extract! goal, :id, :user_id, :title, :reward, :reward_cost, :created, :due, :completed_date_time, :completed
  json.url goal_url(goal, format: :json)
end
