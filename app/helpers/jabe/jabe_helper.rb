module Jabe
  module JabeHelper
    def full_entry_url(entry)
      "#{SETTINGS.host_name}#{root_path}#{entry.published_at.in_time_zone.to_s(:url_part)}/#{entry.to_param}"
    end

    def default_gravatar_url
      "#{request.protocol}#{request.host_with_port}/images/jabe/gravatar.gif"
    end

    def page_title(title)
      @page_title = title
    end

    def stylesheet(name)
      content_for :stylesheets do
        stylesheet_link_tag(name)
      end
    end

    def javascript(name)
      content_for :javascripts do
        javascript_include_tag(name)
      end
    end
  end
end
