class Api::V1::UrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    puts params.inspect
    url = Url.new(url: url_params)
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
