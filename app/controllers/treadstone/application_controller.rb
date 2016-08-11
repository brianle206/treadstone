module Treadstone
 #  class ApplicationController < ActionController::Base
 #    protect_from_forgery with: :exception
 #    def content_entries_path
	#   entries_path(content_class: content_class.tableize)
	# end
	# helper_method :content_entries_path
 #  end
 class ApplicationController < ActionController::Base
    before_action :authenticate_user

    protected

    def current_user
      unless defined?(@current_user)
        @current_user = instance_eval(&Treadstone.configuration.current_user_lookup)
      end
      @current_user
    end
    helper_method :current_user

    def authenticate_user
      return if current_user

      redirect_to instance_eval(&Treadstone.configuration.sign_in_url)
    end
  end
end
