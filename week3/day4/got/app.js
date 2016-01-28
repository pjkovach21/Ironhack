var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
var episodes = JSON.parse(file);
      episodePrinter(episodes)
  }
  
  function episodePrinter (episode_array) {
  for (var i = 0; i < episode_array.length ; i++) {
          console.log("Title: " + episode_array[i].title + " Number: " + episode_array[i].episode_number );
          console.log(episode_array[i].description);
          console.log("Rating: " + episode_array[i].rating)
}
}
fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);
