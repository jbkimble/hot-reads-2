class DashboardController < ApplicationController

  def index
    uri = URI("http://localhost:3000/api/v1/hots/")
    response = Net::HTTP.get(uri)
    urls = JSON.parse(response)
    @urls = urls.sort_by {|key, value| value}.reverse
    @count = 0
    # urls = Url.top_read_in_last_day
    # @urls = urls.sort_by {|key, value| value}.reverse
  end

end
