require "ogg-view-helpers/version"

module Ogg
  module ViewHelpers
    def handle_notices
      flsh = ''
      flash.each do |key,msg|
        flsh << '<div class="flash '+key.to_s+'"><div class="close_notice">Close</div>'+simple_format(msg)+'</div>' unless key == :keypoint_notice
      end
      flsh << '<div class="flash" style="display:none"><div class="close_notice">Close</div></div>'
      flsh.html_safe
    end
  end
end

require 'ogg-view-helpers/railtie' if defined?(Rails)