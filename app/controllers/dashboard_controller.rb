class DashboardController < ApplicationController

  def index
    @count = 0
    urls = Url.top_read_in_last_day
    @urls = urls.sort_by {|key, value| value}.reverse
  end

end
