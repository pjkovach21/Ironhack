function decoder (words) {
	var index = 0;
	var secertMessage = " ";
	for (var i = 0; i < words.length; i++) {
		secertMessage += words[i].charAt(index);
		index = (index + 1) % 5;
	}
	return secertMessage
}

module.exports = decoder;