Time::DATE_FORMATS[:url_part] = lambda { |time| 
  month = time.strftime('%m').gsub(/^0/, '')
  time.strftime("%Y/#{month}/%e")
}
