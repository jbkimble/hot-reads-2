class Api::V1::UrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    url = Url.new(url: params["url"])
    if url.save
      render json: url, :only => [:id, :url]
    else
    end
  end

end
