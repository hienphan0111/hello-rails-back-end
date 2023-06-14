class Api::V1::MessagesController < ApplicationController
  def message
    num_rand = rand(1..5)
    message = Message.find(num_rand)
    if message
      render json: { status: 'SUCCESS', message: "Fetch random message successfully", data: message }, status: :ok
    else
      render json: message.errors, status: :bad_request
    end
  end
end
