$ () ->

  $sidebarLeft = $('.sidebar-left')
  $contentPage = $('.page')

  resizeSidebar = (outerWidth) ->
    if outerWidth >= 1024
      outerHeight = $(document).height()
       
      $sidebarLeft.css({
        height: outerHeight
      })
    else
      $sidebarLeft.css({
        height: 'auto'
      })

  resizeSidebar($(document).width())

  $(window).on('load resize', ->
    resizeSidebar($(document).width())
  ) 

