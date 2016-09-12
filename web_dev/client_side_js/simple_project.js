console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

function invisible(event){
	photo.style.visibility="hidden";
}
function visible(event){
	photo.style.visibility="visible";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

var colors = document.getElementsByTagName("body");
var color = colors[0];
//function changecolor(){
color.style.backgroundColor ="#008000";
//}
//changecolor();

var button_one = document.getElementById("b1");
button_one.addEventListener("click",invisible);
var button_two = document.getElementById("b2");
button_two.addEventListener("click",visible);



