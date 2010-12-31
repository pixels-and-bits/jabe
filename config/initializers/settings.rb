begin
  SETTINGS = Settings.first || Settings.create
  SETTINGS.do_updates
rescue ActiveRecord::StatementInvalid
end