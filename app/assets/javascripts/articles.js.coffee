# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ($) ->
  $container = $("#articles")
  setTimeout (->
    
    # initialize
    $container.masonry
      columnWidth: 100
      itemSelector: ".box"

    return
  ), 200
  return
