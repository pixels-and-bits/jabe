module JabeHelper
  def public_entry_path(entry)
    "/#{entry.published_at.to_s(:url_part)}/#{entry.to_param}"
  end

  def public_entry_url(entry)
    "#{SETTINGS.site_url}/#{public_entry_url(entry)}"
  end
end
