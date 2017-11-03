/*

Time out function
*/

// window.setTimeout(function () {
//   alert('HAMMERTIME!');
// }, 5000);


// function with closure


//
// function hammerTime (ms) {
//   window.setTimeout(function () {
//     alert('HAMMER TIME!');
//   }, ms);
// }



// function hammerTime (time) {
//   window.setTimeout(function () {
//     alert(`${time} is HAMMERTIME!`);
//   });
// }


const readline = require('readline');
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});




function teaAndBiscuits () {
  reader.question('Do you want some tea?', function (answer) {
    console.log(`You replied ${answer}.`);
    reader.question('Do you want some biscuits?', function (answer2) {
      console.log(`You replied ${answer2}.`);

      let res1 = (answer[0] === 'y' || answer[0] === 'Y') ? 'do' : 'don\'t';
      let res2 = (answer2[0] === 'y' || answer2[0] === 'Y') ? 'do' : 'don\'t';

      console.log(`You ${res1} want tea and you ${res2} want biscuits.`);
      reader.close();
    });
  });
}

teaAndBiscuits();



function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();
