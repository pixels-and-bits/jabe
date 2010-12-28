module ApplicationHelper
  def public_entry_url(entry)
    
  end

  def public_entry_path(entry)
    "/#{entry.published_at.to_s(:url_part)}/#{entry.to_param}"
  end
end
