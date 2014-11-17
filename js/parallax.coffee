---
---
$ ->

	# parallax
	if $(window).width() >= 1200 #992
		$.fn.parallax = (options) ->
			windowHeight = $(window).height()
			settings = $.extend(
				speed: 0.15
			, options)
			@each ->
				$this = $(this)
				$(document).scroll ->
					scrollTop = $(window).scrollTop()
					offset = $this.offset().top
					height = $this.outerHeight()
					return  if offset + height <= scrollTop or offset >= scrollTop + windowHeight
					yBgPosition = Math.round((offset - scrollTop) * settings.speed)
					$this.css "background-position", "center " + yBgPosition + "px"
					return
				return
		# $(".bg-1, .bg-2, .bg-3").parallax speed: 0.2
		$(".parallax").parallax speed: 0.2