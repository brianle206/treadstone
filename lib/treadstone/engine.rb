module Treadstone
  class Engine < ::Rails::Engine
    isolate_namespace Treadstone
    require 'jquery-rails'
    require 'font-awesome-rails'
    require 'redcarpet'
    require 'pygments'
    
  end
end
