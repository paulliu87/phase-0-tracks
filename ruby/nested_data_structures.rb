Lot_attendant = {
	numer_of_cars: 25,
	detiled_cars: 4,
	Acura_RDX:  ["$17,000","88,960KM","Automatic","Silver"],
	Audi_A5:  ["$28,000","84,000KM","Automatic","Black"],
	BMW_335xi:  ["$14,000","86,000KM","Automatic","Blue"],
	BMW_X3:  ["$25,000","135,000kM","Automatic","Gold"],

}

Lot_attendant[:numer_of_cars] = 36

p Lot_attendant

Lot_attendant[:Audi_A5][1]= ("70,000")
p Lot_attendant

Lot_attendant[:BMW_X3].replace(["Sold"])
p Lot_attendant