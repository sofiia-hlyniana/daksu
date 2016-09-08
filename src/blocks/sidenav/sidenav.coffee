$ ->
	$body = $('body')
	$menuToggle = $('.menu-toggle__icon')

	showNav = (navSelector, elementToMove, elementToShrink, navWidth, bodyClass) ->
		navWidth = if window.innerWidth > 767 then navWidth else '100%'
		$(navSelector).addClass 'sidenav-open'
		$(elementToShrink).animate { width: '100%' }, 500
		$(elementToMove).animate { marginLeft: navWidth }, 500
		$(navSelector).show 250, ->
			$(navSelector).animate {opacity: 1}, 250
		$body.addClass bodyClass

	if window.innerWidth > 767
		showNav '.sidenav', '.main', '.main .container', 245, 'menu-open'

	hideNav = (navSelector, elementToMoveBack, elementToGrow, navWidth, bodyClass) ->
		$(navSelector).animate {opacity: 0}, 250, ->
			$(navSelector).hide 250
		$(navSelector).removeClass 'sidenav-open'
		$(elementToMoveBack).animate { marginLeft: 0 }, 500
		$(elementToGrow).removeAttr 'style'
		$body.removeClass bodyClass


	$menuToggle.on 'click', (ev) ->
		ev.preventDefault()
		ev.stopPropagation()
		if $body.hasClass 'menu-open'
			hideNav '.sidenav', '.main', '.main .container', 245, 'menu-open'
		else
			showNav '.sidenav', '.main', '.main .container', 245, 'menu-open'