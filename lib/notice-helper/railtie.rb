require 'notice-helper/view_helper'

module NoticeHelper
  class Railtie < Rails::Railtie
    initializer "notice-helper.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
    class Engine < Rails::Engine
      
    end
  end
end