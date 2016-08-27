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
function test_result(function_result,expectation){
	var compare_each_char = false;
	for (var i=0 ; i < function_result.length; i++){
		if (function_result[i] != expectation[i]){
			console.log("The reverse function does not work!");
			compare_each_char = false;
			break ;}
			else{
			compare_each_char =true;	
			}
	}
	if (compare_each_char == true) {
			console.log("The reverse function works perfectly!");
	}
	
}

console.log("hello");
console.log(reverse("hello"));
console.log(test_result(reverse("hello"),"olleh"));