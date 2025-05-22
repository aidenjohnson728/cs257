
window.addEventListener("load", initialize);

let team1Selected = null; //For use in the team1 dropdown
let team2Selected = null; //For use in the team2 dropdown

function initialize() {
    if (document.getElementById("teams_list")) {//teams
        getTeams();
    }
    if (document.getElementById("games")) { //teampage
        getGames();
        populateLineChart();
        //getRankHistory();
    }
    if (document.getElementById("team1_list")) { //MTIBTYT
        loadTeamsDropdown();
        const btn = document.getElementById("chain_button");
            if (btn) {
                btn.addEventListener("click", onShowChainClicked);
            }
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

function populateLineChart() {
  // 1) grab team from URL
const params = new URLSearchParams(window.location.search);
const team   = params.get('team');
if (!team) return;

  // 2) fetch both matches & rankings
    let url = getAPIBaseURL() + '/teampage?team=' + encodeURIComponent(team) + '&algorithm=USAU';
    fetch(url)
        .then(res => res.json())
        .then(result => {
        const dates = result.rankings.map(r => r.date);
        const ranks = result.rankings.map(r => r.rank);

        const trace = {
        x: dates,
        y: ranks,
        mode: 'lines+markers',
        name: 'Rank History'
        };

        Plotly.newPlot('chart', [ trace ], {
        title: 'Ranking History',
        xaxis: { title: 'Date' },
        yaxis: { title: 'Rank', autorange: 'reversed' } 
        });
    })
    .catch(err => console.error(err));
}

function loadTeamsDropdown() {
    let url = getAPIBaseURL() + '/teams';

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(teams) {
        let dropdownHTML1 = '';
        let dropdownHTML2 = '';
        teams.forEach(function(team){
            dropdownHTML1 += `<li onclick="selectTeam(1,'${team.name}')">${team.name}</li>`;
            dropdownHTML2 += `<li onclick="selectTeam(2,'${team.name}')">${team.name}</li>`;

        })
        document.getElementById('team1_list').innerHTML = dropdownHTML1;
        document.getElementById('team2_list').innerHTML = dropdownHTML2;
    })
}

function selectTeam(slot, teamName) {
    if (slot === 1) {
        team1Selected = teamName;
        document.getElementById('team1_header').innerHTML = teamName;
    } else {
        team2Selected = teamName;
        document.getElementById('team2_header').innerHTML = teamName;
    }
}

function getChain() {
    let url = getAPIBaseURL() + '/MTIBTYT?teamOne=' + encodeURIComponent(team1Selected) + '&teamTwo=' + encodeURIComponent(team2Selected);

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(result) {
        let chainHTML = '';
        result.forEach((name, i) => {
        chainHTML += `<li>${name}${i < result.length - 1 ? " > " : ""}</li>`;
        });
        const ul = document.querySelector('#chain_output ul');
        if (ul) {
            ul.innerHTML = chainHTML;
        }
    })
}

function onShowChainClicked() {
  // make sure both teams are picked
  if (!team1Selected || !team2Selected) {
    alert("Please select both Team 1 and Team 2 first.");
    return;
  }
  getChain();
}

