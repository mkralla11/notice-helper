Notice Helper
=============

This is a fairly basic Rails flash notice helper.

Usage
-----

In your layout file place the view helper:

`<%= handle_notices %>`

If you want to ignore certain flash messages you can pass an array of symbols:

`<%= handle_notices([:ignore_this_message, :and_this_one]) %>`

That's about it.  There are some default styles that use icons (included in the assets) and a little jquery for the close link.  You should include jquery first in your manifest file before the call to the handle-notice assets.

    // assets/stylesheets/application.css
    require handle-notices
    
    // assets/javascripts/application.js
    require jquery
    require handle-notices
