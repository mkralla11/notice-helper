require "notice-helper/version"

module NoticeHelper
  module ViewHelpers
    def handle_notices(ignore=nil)
      flsh = ''
      flash.each do |key,msg|
        flsh << '<div class="flash '+key.to_s+'"><div class="close_notice">Close</div>'+simple_format(msg)+'</div>' unless ignore and ignore.include?(key)
      end
      flsh << '<div class="flash" style="display:none"><div class="close_notice">Close</div></div>'
      flsh.html_safe
    end
  end
end