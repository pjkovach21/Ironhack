  function tournamentsIndex () {
  var request = $.get('/api/tournaments.json')
  request.fail(showError)
  request.done(showTournaments)

  var $tourneySection = $('.js-tourney-section')

  function showError (error) {
    console.error('Error fetching tournament list.', '\n' + error.responseText)
    var message = 'There was a problem fetching the list of tournaments.'
    $tourneySection.append(buildErrorHtml(message))
  }

  function showTournaments (tournaments) {
    var html

    if (tournaments.length === 0) {
      html = buildErrorHtml('Looks like there aren\'t any tournaments yet.')
    } else {
      html = buildTourneyListHtml(tournaments)
    }

    $tourneySection.append(html)

    $('[data-hook~=tourney-add]').removeClass('hidden')
  }

}
   function deleteTournament (event) {
    event.preventDefault()
    tournamentId = $(this).prop("value")
    // saving button
    var $button = $(this)
   var request = $.ajax({
    //  explain type and data
      url: '/api/tournaments',
      type: 'DELETE',
      data: {id: tournamentId},
      success: function (response){
        // deleting button
        $button.parent().remove();
      },
      error: function (){
        alert("shit didnt work")
      }
    });
  }