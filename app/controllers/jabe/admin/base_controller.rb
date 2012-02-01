module Jabe
  class Admin::BaseController < ApplicationController
    include PublicEntryUrl
    before_filter :authenticate_admin!
  end
end