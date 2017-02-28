class DashboardController < ApplicationController

  def index
    uri = URI("https://arcane-fortress-52437.herokuapp.com/api/v1/hots/")
    response = Net::HTTP.get(uri)
    urls = JSON.parse(response)
    @urls = urls.sort_by {|key, value| value}.reverse
    @count = 0
  end

end
