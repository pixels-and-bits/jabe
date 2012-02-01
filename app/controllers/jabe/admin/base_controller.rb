module Jabe
  class Admin::BaseController < ApplicationController
    layout 'jabe/application'
    include PublicEntryUrl
    before_filter :authenticate_admin!
  end
end