SETTINGS = Settings.first || Settings.create
Time.zone = SETTINGS.time_zone
