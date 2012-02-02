begin
  require 'RedCloth' unless defined? RedCloth
rescue LoadError
  nil
end

require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/acts_as_textiled/base'))
ActiveRecord::Base.send(:include, Err::Acts::Textiled)
