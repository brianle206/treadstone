require_depedency "treadstone/application_controller"


module Treadstone
  class PreviewsController < ApplicationController
    def show
      render layout: false
    end
  end
end