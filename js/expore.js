//Input: make a function that take a string 
//1. define function 
//2. define a function that insert the the char from string to the new string
// with  a reversed order
//3. return the new strng 
//4.call out code display
  



function reverse(string){
	var new_string = "";
	for (var i = string.length; i >0; i-=1){
		new_string += string[i-1];
	}
	return new_string;
}

console.log("hello");
console.log(reverse("hello"));