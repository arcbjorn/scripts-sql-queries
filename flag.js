


// Dev env: bash, nodejs compiler
// Printing ru flag
const WHITE = "\x1b[37m";
const BLUE = "\x1b[34m";
const RED = "\x1b[31m";


const createLine = (width, symbol) => {
	let line = "";

	for (var i = 0; i < width; i++) {
		line = line.concat(symbol);
	}

	return line;
}

// code below was not used, because it adds a return or undefined (we need 3 blocks without line inbetween)
// const createBlock = (width, height, symbol, color) => {
// 	var line = createLine(width, symbol);

// 	for (var i = 0; i < height; i++) {
// 		console.log(color, line);
// 	}

// 	return "";
// // }
// console.log(createBlock(80, 20, "O", WHITE));
// console.log(createBlock(80, 20, "O", BLUE));
// console.log(createBlock(80, 20, "O", RED));

// bash usage
var line = createLine(80, "O");

for (var i = 0; i < 20; i++) {
	console.log(WHITE, line);
}
for (var i = 0; i < 20; i++) {
	console.log(BLUE, line);
}
for (var i = 0; i < 20; i++) {
	console.log(RED, line);
}



// usable function
const flag = () => {
	var line = createLine(20, "O");

	for (var i = 0; i < height; i++) {
		console.log(WHITE, line);
	}
	for (var i = 0; i < height; i++) {
		console.log(BLUE, line);
	}
	for (var i = 0; i < height; i++) {
		console.log(RED, line);
	}
};

// const flag = () => {
// 	console.log(createBlock(80, 20, "O", WHITE));
// 	console.log(createBlock(80, 20, "O", BLUE));
// 	console.log(createBlock(80, 20, "O", RED));
// };

// for projects
// export default flag;



