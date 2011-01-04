class Settings < ActiveRecord::Base

  def do_updates
    Time.zone = self.time_zone
    ActionMailer::Base.default_url_options[:host] = self.host_name
  end
end
