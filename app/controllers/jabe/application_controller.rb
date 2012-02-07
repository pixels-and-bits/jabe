module Jabe
  class ApplicationController < ActionController::Base
    include PublicEntryUrl
    include BodyClassHelper
  end
end
