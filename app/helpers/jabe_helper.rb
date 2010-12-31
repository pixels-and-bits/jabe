module JabeHelper
  def public_entry_path(entry)
    "/#{entry.published_at.in_time_zone.to_s(:url_part)}/#{entry.to_param}"
  end

  def public_entry_url(entry)
    "#{SETTINGS.site_url}#{public_entry_path(entry)}"
  end
end
