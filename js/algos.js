
//Release 0
//define a function that takes one parameter
//define a for loop that runs as many times as the length of array
//define a variable that has max length
//if the element has longer length than the variable, update it
//return and stop the loop


function find_longest_phrase(sample) {
	var longest_phase = "";
	for (var i = 0; i < sample.length; i++){
		if (sample[i].length > longest_phase.length){
			longest_phase = sample[i];
		}
	}

	return longest_phase;
}


//Release1
//define a function that takes two parameters
//define a loop that runs as many times as the length of first input
//compare each element from first parameter to the second parament to see if there is any same one
//return a true or false as output
//driver code

function find_key_value_match(sample_1,sample_2){
	var compare_match = false;
	var keys_1 = Object.keys(sample_1);
	var keys_2 = Object.keys(sample_2);
	for(var i = 0; i<keys_1.length;i++){
		for(var j = 0; j <keys_2.length; j++){
			if(keys_1[i] == keys_2[j]){
				if(sample_1[keys_1[i]]==sample_2[keys_2[j]]){
				compare_match =true;
				break;
			}}			
		}
	}
	return compare_match;
}

//driver code for release 0
console.log(find_longest_phrase(["long phrase","longest phrase","longer phrase","eiorjaiojioejeaiojaier"]));
//driver code for elease 1

console.log(find_key_value_match({name: "Steven", age: 54},{name: "Tamir", age: 53}));