var horse_colors = ["white","black","brown","grey"];
var horse_names = ["Ed","Flash","Biscuit","Pony"];

//function add_color(new_color){

//}
//console.log(horse_colors);
//console.log(horse_names);


horse_colors.push("Red");
horse_names.push("Pearl");

//console.log(horse_colors);
//console.log(horse_names);
//console.log(horse_names.length);

var horse_list = {};

for (var i = 0; i < horse_names.length; i+=1){
	horse_list[horse_names[i]] = horse_colors[i];
}

console.log(horse_list);