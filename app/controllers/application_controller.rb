class ApplicationController < ActionController::API

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'def123')
  end

end
