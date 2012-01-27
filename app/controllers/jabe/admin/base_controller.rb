module Jabe
  class Admin::BaseController < ApplicationController
    before_filter :authenticate_jabe_admin!
  end
end