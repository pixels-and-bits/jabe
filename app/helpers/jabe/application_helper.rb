module Jabe
  module ApplicationHelper
    include PublicEntryUrl

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
