module Jabe
  class Settings < ActiveRecord::Base
    def do_updates
      Time.zone = self.time_zone
      ActionMailer::Base.default_url_options[:host] = self.host_name
      Rakismet.key = self.akismet_key rescue nil
      Rakismet.url = self.akismet_url rescue nil
    end
  end

  begin
     SETTINGS = Settings.first || Settings.create
     SETTINGS.do_updates
  rescue ActiveRecord::StatementInvalid
  end
end
