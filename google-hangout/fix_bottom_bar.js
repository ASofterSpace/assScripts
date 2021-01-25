// in a google meet call, fix the bottom bar so it does not keep disappearing all the time
// (just copy this into the developer console in the browser)

// get all divs
var divs = document.getElementsByTagName("div");
for (var i = 0; i < divs.length; i++) {
	// fix each div at its correct position
	// (this will move around some icons in a silly way, but who cares ^^)
	divs[i].style.transform = 'translateY(0px)';
}
