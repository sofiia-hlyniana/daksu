$ ->
	$body = $('body')
	$menuToggle = $('.menu-toggle__icon')

	showNav = (navSelector, elementToMove, elementToShrink, navWidth, bodyClass) ->
		$(navSelector).width navWidth
		$(elementToMove).css 'margin-left', navWidth
		newWidth = $(elementToShrink).width() - navWidth
		$(elementToShrink).width newWidth
		$body.addClass bodyClass

	hideNav = (navSelector, elementToMoveBack, elementToGrow, navWidth, bodyClass) ->
		$(navSelector).width 0
		$(elementToMoveBack).css 'margin-left', 0
		$(elementToGrow).removeAttr 'style'
		$body.removeClass bodyClass

	$menuToggle.on 'click', (ev) ->
		ev.preventDefault()
		ev.stopPropagation()
		if $body.hasClass 'menu-open'
			hideNav '.sidenav', '.main', '.main .container', 245, 'menu-open'
		else
			showNav '.sidenav', '.main', '.main .container', 245, 'menu-open'

	$(window).on 'resize', ->
		if $body.hasClass 'menu-open'
			hideNav '.sidenav', '.main', '.main .container', 245, 'menu-open'