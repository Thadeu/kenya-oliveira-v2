$ () ->
  
  # height da sidebar left menu
  outerHeight = $(document).height()
  outerWindow = $(document).width()
  
  if outerWindow >= 768 
    $('.sidebar-left').css({
      height: outerHeight
    })
