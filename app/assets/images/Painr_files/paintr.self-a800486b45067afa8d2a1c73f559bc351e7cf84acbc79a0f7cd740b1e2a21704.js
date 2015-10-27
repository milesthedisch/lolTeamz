var addSwatch = function () {
	var $color = $('#color')
	var colorValue = $color.val();

	var $swatch = $('<div/>').addClass('swatch').css('background-color', colorValue)
	$swatch.prependTo('.palette')

};

var prepareCanvas = function (n) {
	if(!n) {
		n = 10000;
	}
	$('canvas').empty();
	for (var i = 0; i < n; i++) {
		$('<div/>').addClass('pixel').appendTo('.canvas')
	}
}	

$(document).ready(function(){
	prepareCanvas()
	$('#add_color').on('click', addSwatch)
});
