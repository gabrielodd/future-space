class LaunchersController < ApplicationController
  require 'rest-client'

  def home
    render json: { message: "REST Back-end Challenge 20201209 Running"}
  end

  def get_launches
    url = "https://ll.thespacedevs.com/2.0.0/launch/?format=json"
    response = RestClient.get(url)
    render json: response
  end
end
