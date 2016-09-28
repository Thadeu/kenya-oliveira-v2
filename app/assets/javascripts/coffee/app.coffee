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

  $('.menu-mobile').css('height', $(document).height())

  $('.mobile-icon.menu').on 'click', (e) ->
    e.preventDefault()
    $('.menu-mobile').show()
    $('.mobile-icon.menu').hide()
    $('.mobile-icon.close').show()
  
  $('.mobile-icon.close').on 'click', (e) ->
    e.preventDefault()
    $('.mobile-icon.close').hide()
    $('.menu-mobile').hide()
    $('.mobile-icon.menu').show()
  
