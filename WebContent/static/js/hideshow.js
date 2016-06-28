/**
 * 
 */

function showhide(id) {
	var j = document.getElementById(id);
		j.style.display = (j.style.display == 'block') ? 'none' : 'block';
		window.setTimeout(function(){ 
			j.style.display = 'none';
			}, 2000);
 		}