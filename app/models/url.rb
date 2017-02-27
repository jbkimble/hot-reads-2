class Url < ApplicationRecord
  def self.top_read_in_last_day
    where(updated_at: (Time.now - 24.hours)..Time.now).group('url').limit(10).count
  end
end
