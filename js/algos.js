
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

//Release 2
//define a function with input of an intiger
//define a string with all letters
//for loop stops till the as many time as the input
//define a local variable string that store the a string temporarily
//another loop stops at random number from 1-10
//push the string to array
//return the new array

function create_random_array(length){
	var alph = "abcdefghigklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var arr = [];
	for (var i = 0; i < length;i++){
		var temp_word = "";
		for (var j = 0; j < Math.floor((Math.random() * 10) + 1);j++){
			var random_index = Math.floor((Math.random() * alph.length) + 1);
			temp_word+=alph[random_index];
			}
		arr.push(temp_word);
		
	}
	return arr;
}

function driver_code(test_times){
	for (var i = 0; i < test_times; i++){
		var test_arr = create_random_array(Math.floor((Math.random() * 15) + 1));
		console.log(test_arr);
		var longest_word = find_longest_phrase(test_arr);
		console.log(longest_word);
	}
}

//driver code for release 0
console.log(find_longest_phrase(["long phrase","longest phrase","longer phrase","eiorjaiojioejeaiojaier"]));
//driver code for elease 1
console.log(find_key_value_match({name: "Steven", age: 54},{name: "Tamir", age: 53}));
//driver code for elease 2
driver_code(10);