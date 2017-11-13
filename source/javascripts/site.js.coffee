#= require jquery
#= require _holder

$ ->
	$(document).on 'click', 'a[href^="#"]', (event) ->
		event.preventDefault()
		href = $.attr this, 'href'
		$('html, body').animate { scrollTop: $(href).offset().top }, 500

	navs = $('nav').find('a[href^="#"]').toArray()
	navs = navs.map (nav) ->
		href = $.attr nav, 'href'
		anchor = $(href)
		[$(nav), anchor]

	$(window).scroll ->
		top = $(window).scrollTop()
		last = undefined
		$.each navs, (_, nav) ->
			[nav, anchor] = nav
			return if anchor.size() <= 0
			nav.removeClass 'active'
			if ( top + 1 >= anchor.offset().top )
				last = nav
		if last?
			last.addClass 'active'
