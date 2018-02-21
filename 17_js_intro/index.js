// let obj = {};
// obj["name"] = "vic";
//
// let array = ["Travis", "Johann"];
//
// // for (let i = 0; i < array.length; i++) {
// //   console.log(array[i])
// // }
//
// //
// // array.push("Ashlee")
// //
// // // array.last()
// //
// // array.shift()
//
// /*
//
//   array.each do |item|
//     puts item
//   end
//
// */
//
// array.forEach(function(item) {
//   console.log(item);
// });
//
// let numberArray = [1, 2, 3];
//
// /*
// new_array = numberArray.map do |item|
//   item * 2
// end
//
//
// def test do
// puts "Hello"
// end
//
// test
//
//
// */
//
// let newArray = numberArray.map(function(item) {
//   return item * 2;
// });
//
// /// filter , map, forEach, reduce, splice, slice, find
//
// function sum(a, b) {
//   return a + b;
// }
//
// /// hello.js
// function sayHello() {
//   console.log("Hello from Beefs");
// }
//
// /// whats the value of someFunc
// /// undefined
//
// function operator(someFunc) {
//   console.log("Before some func is called");
//
//   console.log(someFunc);
//
//   someFunc(); // calling method sum
//   console.log("After some func is called");
// }
// /// what is the return of say hello
// //// undefined
// operator(sayHello); // calling operator and passing in the reference to sum

// console.log(sum(1, 2));

// function test() {}
//
// console.log(test()); //undefined
// console.log(test);

/*

[1,2,3].forEach(function(item) {
  console.log(item * 2)
})

*/
//
// function logAndMultiply(value) {
//   console.log(value * 2);
// }
//
// function each(array, someFunc) {
//   for (let i = 0; i < array.length; i++) {
//     someFunc(array[i]);
//   }
//   return array;
// }
//
function map(array, someFunc) {
  let newArray = [];
  console.log(someFunc);
  for (let i = 0; i < array.length; i++) {
    newArray.push(someFunc(array[i]));
  }
  return newArray;
}
//
// function multipleByTwo(value) {
//   return value * 2;
// }
//
// let tempArray = map([1, 2, 3], multipleByTwo());
// console.log(tempArray);

// each([1, 2, 3, 4], console.log);

// let squares = map([1, 2, 34], function(item) {
//   return item * item;
// });
//
// let squares = map([1, 2, 34], (item) => {
//   return item * item;
// });

// console.log(squares);

// function multiplyCreator(num) {
//   return function(value) {
//     return value * num;
//   };
// }

/*

class Cat do
attr_accessor :name



end


*/

function scopedFunc() {
  // var someValue = 1000;
  // let someOtherValue = 100;
  // const someOtherOtherValue = 1;
  //
  // console.log(someValue);
  console.log("Hello Johann");
}

let obj = {
  sayYourName: function() {
    console.log("Hello i am object");
  }
};
// console.log(someValue);
// scopedFunc();
// console.log(someValue);
