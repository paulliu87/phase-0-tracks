//create the array
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

console.log(find_longest_phrase(["long phrase","longest phrase","longer phrase","eiorjaiojioejeaiojaier"]));