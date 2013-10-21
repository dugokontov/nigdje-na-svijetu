# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.input-append.date').datepicker
    format: "yyyy-mm-dd"
    todayBtn: "linked"
    language: "rs-latin"
    orientation: "top auto"
    autoclose: true
    todayHighlight: true