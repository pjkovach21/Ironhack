var pitFight = function (viking1, viking2, turns){
	this.viking1 = viking1
	this.viking2 = viking2
	this.state = {
		currentlyAttcking: viking1,
		beingAttacked: viking2
	}
	this.turns = turns;
}

pitFight.prototype.initiate = function() {
	console.log(`Battle has begun between ${viking1} and ${viking2});
	this.battle;
};


pitFight.prototype.vikingAlmostdead= function() {
	return (this.viking1.health <= (this.viking2.strength + 1))
   || (this.viking2.health <= (this.viking1.strength + 1));
};


pitFight.prototype.method_name = function(first_argument) {
	for (var 1 = 1; i <= this.turns; i++) {
		var attackingViking = this.state.currentlyAttcking;
		var beingAttacked = this.state.between;
		if (!this.vikingAlmostdead()){
			attackingViking.attack(beingAttacked)
			this.state.currentlyAttcking = beingAttacked;
			this.state.beingAttacked = attackingViking;
			this.printStatus();
		} else {
			console.log("the match has ended")
			return;
		}
	}
}

pitFight.prototype.printStatus = function () {
	var attacking = this.state.currentlyAttcking;
	var defending = this.state.beingAttacked;
	console.log("***********")
	console.log(`${attacking.name} is next up with ${attacking.health} health`)
	console.log(`${defending.name} is defending and has ${defending.health} health\n`)
}

module.exports = pitFight