function switch_to_next() {
		opacity--;
		var k = i + 1;
		var image_now = 'image_' + i;
		if (i == num_of_pics) k = 1;
		var image_next = 'image_' + k;
		document.getElementById(image_now).style.opacity = opacity / 100;
		document.getElementById(image_now).style.filter = 'alpha(opacity=' + opacity + ')';
		document.getElementById(image_next).style.opacity = (100 - opacity) / 100;
		document.getElementById(image_next).style.filter = 'alpha(opacity=' + (100 - opacity) + ')';
		timeout = setTimeout("switch_to_next()", time_out);
		if (opacity == 1) {
			opacity = 100;
			clearTimeout(timeout);
		}
	}
	var num_of_pics = 4;
	var interval = 10000;
	var time_out = 1;
	var i = 0;
	var timeout;
	var opacity = 100;
	setInterval(function func1() {
		i++;
		if (i > num_of_pics) i = 1;
		switch_to_next();
	}, interval);