Rails.configuration.stripe = {
  :publishable_key => 'pk_test_0HynsYNf7IY5LhwSzSpxLMHn',
  :secret_key      => 'sk_test_anfdYFDq22WU9memXkGyyAQd'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]