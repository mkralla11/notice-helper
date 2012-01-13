require 'ogg-view-helpers'

module Ogg
  class Railtie < Rails::Railtie
    initializer "ogg.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end