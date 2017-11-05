#= require jquery
#= require _holder

$ ->
	$(document).on 'click', 'a[href^="#"]', (event) ->
		event.preventDefault()
		href = $.attr this, 'href'
		$('html, body').animate { scrollTop: $(href).offset().top }, 500

	navs = $('nav').find('a[href^="#"]').toArray()
	navs = navs.map (nav) ->
		# console.info nav
		href = $.attr nav, 'href'
		anchor = $(href)
		[$(nav), anchor]

	$(window).scroll ->
		top = $(window).scrollTop()
		last = undefined
		$.each navs, (_, nav) ->
			# console.info nav
			[nav, anchor] = nav
			# console.info nav
			# console.info anchor
			nav.removeClass 'active'
			if ( top + 1 >= anchor.offset().top )
				last = nav
		if last?
			last.addClass 'active'
