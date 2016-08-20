$ ->
	$body = $('body')
	showNav = (navSelector, elementToMove, navWidth, bodyClass) ->
		$(navSelector).width navWidth
		$(elementToMove).css 'margin-left', navWidth
		$body.addClass bodyClass

	hideNav = (navSelector, elementToMove, bodyClass) ->
		$(navSelector).width 0
		$(elementToMove).css 'margin-left', 0
		$body.removeClass bodyClass

	$('.menu-toggle__icon').on 'click', (ev) ->
		ev.preventDefault()
		ev.stopPropagation()
		showNav '.sidenav', '.main', 245, 'menu-open'

	$('body').on 'click', (ev) ->
#		console.log ev.target == $('.sidenav')
		return if ev.target == $('.sidenav') or ev.target == $('.sidenav').children()
		if $('body').hasClass 'menu-open'
			hideNav '.sidenav', '.main', 'menu-open'