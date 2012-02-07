module Jabe
  module ApplicationHelper
    include PublicEntryUrl

    def body_class_name
      controller.class.to_s.underscore.parameterize.dasherize.gsub(/-controller$/, '')
    end

    def default_gravatar_url
      "#{request.protocol}#{request.host_with_port}#{asset_path('jabe/gravatar.gif')}"
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
