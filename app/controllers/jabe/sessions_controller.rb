module Jabe
  class SessionsController < ::Devise::SessionsController
    layout 'jabe/application'
    include BodyClassHelper

    protected

      def after_sign_in_path_for(resource)
        admin_entries_path
      end

      def after_sign_out_path_for(resource)
        root_path
      end

  end
end