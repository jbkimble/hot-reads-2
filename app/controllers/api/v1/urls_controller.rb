class Api::V1::UrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    puts params.inspect
    x = url_params["url"]
    puts "THIS IS IS IMPORTANT:" + x
    url = Url.new(url: x)
    if url.save
      render json: url, :only => [:id, :url]
    else
    end
  end

  private

  def url_params
    params.permit(:url)
  end
end
