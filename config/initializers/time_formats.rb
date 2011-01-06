Time::DATE_FORMATS[:url_part] = lambda { |time| 
  time.strftime("%Y/%m/%d")
}
