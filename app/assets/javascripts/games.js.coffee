# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

do ($) ->

  $ ->

    ## bread goes up and down
    # $(".hole").each (index, element) ->



    score = 0

    ## make the bread go down


    $(".hole").click ->
      $(@).find(".bread").fadeOut("slow")
      score = score - 1

    $(".hole").click ->
      $(@).find(".bread-mold").fadeOut("slow")
      score = score + 1




