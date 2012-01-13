$(function(){
  $('div.close_notice').live('click',function(){
    $(this).parent('div.flash').hide();
  });
});