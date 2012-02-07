module Jabe
  class Admin::BaseController < ApplicationController
    layout 'jabe/application'
    include PublicEntryUrl
    include BodyClassHelper
    before_filter :authenticate_admin!
  end
end
