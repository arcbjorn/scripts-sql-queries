


// Dev env: bash, node compiler

//test array
ar = [4, 43, 7, 23, 85, 3, 1, 5, 74];
// ascending order
const Asc = true;
//descending order
const Des = false;

// 1st param: array of ints
// 2nd param: boolean
// true = sort array in ascending order
// false = sort array in descending order --> DEFAULT if no order given

const sort = (arr, order) => {
	sortedArr = order ? arr.sort((a,b)=>a-b) : arr.sort((a,b)=>b-a); 
	return sortedArr
}

//TEST
console.log("Test array", ar);
console.log("Sorted in ascending order:", sort(ar, true));
console.log("Sorted in descending order:", sort(ar, false));
console.log("Sorted by default:", sort(ar));


// for integration into js project
// default export sort;



