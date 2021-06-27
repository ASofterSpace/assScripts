// telegram deployed a new version of its web app, and it is running super well
// except for completely missing scroll bars... which would be fine on a touch
// device, but my laptop is not a touch device - so this script re-introduces
// the scroll bars :D

var bubblesChild = document.getElementsByClassName('bubbles')[0].childNodes[0];
bubblesChild.style.scrollbarWidth = 'initial';
bubblesChild.style.overflowY = 'scroll';
