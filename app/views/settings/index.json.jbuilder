json.array!(@settings) do |setting|
  json.extract! setting, :id, :mailing_address, :goal_cancellation_refund_time_delay_in_days, :share_completed_goals?, :dream, :age, :occupation, :sex, :user_id
  json.url setting_url(setting, format: :json)
end
