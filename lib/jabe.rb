require "jabe/engine"

module Jabe

  module PublicEntryUrl
    def self.included( base )
      base.send(:helper_method, :public_entry_url) if base.respond_to?(:helper_method)
    end

    def public_entry_url(entry)
      "//#{SETTINGS.host_name}#{root_path}#{entry.published_at.in_time_zone.to_s(:url_part)}/#{entry.to_param}"
    end
  end

  module BodyClassHelper
    def self.included( base )
      base.send(:helper_method, :body_class_name) if base.respond_to?(:helper_method)
    end

    def body_class_name
      if self.respond_to?(:controller)
        controller.class.to_s.underscore.parameterize.dasherize.gsub(/-controller$/, '')
      else
        self.class.to_s.underscore.parameterize.dasherize.gsub(/-controller$/, '')
      end
    end
  end

end
