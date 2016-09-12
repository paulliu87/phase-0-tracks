console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

var colors = document.getElementsByTagName("body");
var color = colors[0];
//function changecolor(){
color.style.backgroundColor ="#008000";
//}

//changecolor();


