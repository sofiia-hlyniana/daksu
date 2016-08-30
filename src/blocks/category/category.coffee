$ ->
	$('.dropdown-toggle').dropdown()

	$('.dropdown__toggle').on 'click', ->
		$parent = $(@).parents('.dropdown')
		if $parent.hasClass 'open'
			$parent.removeClass 'open'
		else
			$parent.addClass 'open'

	$('.category__dropdown-close').on 'click', (e) ->
		e.preventDefault()
		$(@).parents('.dropdown').removeClass 'open'