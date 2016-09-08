$ ->
	$('.dropdown-toggle').on 'click', (e) ->
		$parent = $(e.target).parents('.dropdown')
		console.log $parent
		if $parent.hasClass 'open'
			$parent.removeClass 'open'
		else
			$parent.addClass 'open'

	$('.category__dropdown-close').on 'click', (e) ->
		e.preventDefault()
		$(e.target).parents('.dropdown').removeClass 'open'