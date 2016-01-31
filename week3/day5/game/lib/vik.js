// var Question =function(question, answer, id) {
// 	this.question = question;
// 	this.answer = answer;
// 	this.id = id
// }

// var Quiz = function(list) {
// 	this.list = list
// }

// Quiz.prototype.ask = function(ques){
// 	if this}

var read = require('read');

options = {
    prompt: "What's your name?\n>"
}

read(options, displayName)

function displayName (err, name){
    console.log("Your name is: " + name)
}