require "notice-helper/version"

module NoticeHelper
  module ViewHelpers
    def handle_notices(ignore=nil)
      flsh = ''
      flash.each do |key,msg|
        flsh << '<div class="alert alert-block alert-'+key.to_s+'"><a class="close" data-dismiss="alert" href="#">&times;</a>'+simple_format(msg)+'</div>' unless ignore and ignore.include?(key)
      end
      flsh << '<div class="alert"><a class="close" data-dismiss="alert" href="#">&times;</a></div>'
      flsh.html_safe
    end
  end
end