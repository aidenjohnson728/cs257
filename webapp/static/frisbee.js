
window.addEventListener("load", initialize);

function initialize() {
    if (document.getElementById("teams_list")) {
        getTeams();
    }
     if (document.getElementById("games")) {
        getGames();
        getTeamName();
        getRankHistory();
     }
     if (document.getElementById("team1_list")) {
        loadTeamsDropdown();
     }
}   

// Returns the base URL of the API, onto which endpoint
// components can be appended.
function getAPIBaseURL() {
    let baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

function getTeams() {
    let url = getAPIBaseURL() + '/teams';

    // Send the request to the books API /authors/ endpoint
    fetch(url, {method: 'get'})

    // When the results come back, transform them from a JSON string into
    // a Javascript object (in this case, a list of author dictionaries).
    .then((response) => response.json())

    // Once you have your list of author dictionaries, use it to build
    // an HTML table displaying the author names and lifespan.
    .then(function(result) {
        // Add the <option> elements to the <select> element
        let teamsHTML = '';
        for (let k = 0; k < result.length; k++) {
            teamsHTML += `<li>
                            <a href="/teampage.html?team=${encodeURIComponent(result[k].name)}">
                            ${result[k].name}
                            </a>
                        </li>`;

        }


        let selector = document.getElementById('teams_list');
        if (selector) {
            selector.innerHTML = teamsHTML;
        }
    })

    // Log the error if anything went wrong during the fetch.
    //  <table>
     //       <tr><th>Date</th><th>Opponent</th><th>Score (home-opponent)</th></tr>
     //       <tr><th> 3-30 </th><th>Mississippi State</th><th>15-12</th></tr>
       //     <tr><th>2-17</th><th>Lewis & Clark</th><th>4-15</th></tr>
         //   <tr><th>2-09</th><th>South Florida-B</th><th>7-9</th></tr>
           // </table>
    .catch(function(error) {
        console.log(error);
    });
}

function getGames() {

    let params = new URLSearchParams(window.location.search);
    let team = params.get('team');
    if (!team) {
        return;
    }
    let url = getAPIBaseURL() + '/teampage?team=' + encodeURIComponent(team) + '&algorithm=USAU';

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    
    .then(function(result) {
    // Build the matches table
     let gamesHTML = `<table>
                         <tr>
                           <th>Date</th>
                           <th>Opponent</th>
                           <th>Score</th>
                         </tr>`;

    result.matches.forEach(function(match) {
      gamesHTML += '<tr>'
                 +   '<td>' + match.date           + '</td>'
                 +   '<td>' + match.opponent_name  + '</td>'
                 +   '<td>' + match.our_score
                          + '–' + match.opponent_score
                          + '</td>'
                 +  '</tr>';
    });

    gamesHTML += '</table>';
    titleHTML = '<h2>' + team + '</h2>';

    let selector = document.getElementById('page-title');
    if (selector) {
        selector.innerHTML = titleHTML;
    }

     let selector2 = document.getElementById('games');
        if (selector2) {
            selector2.innerHTML = gamesHTML;
        }

})}

function loadTeamsDropdown() {
    let url = getAPIBaseURL() + '/teams';

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(teams) {
        let dropdownHTML = '';
        teams.forEach(function(team){
            dropdownHTML += '<li>' + team.name + '</li>';
        })
        document.getElementById('team1_list').innerHTML = dropdownHTML;
        document.getElementById('team2_list').innerHTML = dropdownHTML;
    })
}

