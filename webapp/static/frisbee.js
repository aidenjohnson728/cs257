window.addEventListener("load", initialize);


let team1Selected = null; //For use in the team1 dropdown
let team2Selected = null; //For use in the team2 dropdown
let allTeams = []; // Store all teams for searching


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

   .then((response) => response.json())


   .then(function(result) {
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


function populateLineChart(algorithm = 'USAU') {
    const params = new URLSearchParams(window.location.search);
    const team = params.get('team');
    if (!team) return;

    let url = getAPIBaseURL() + '/teampage?team=' + encodeURIComponent(team) + '&algorithm=' + encodeURIComponent(algorithm);
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

            Plotly.newPlot('chart', [trace], {
                title: `Ranking History (${algorithm})`,
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
       allTeams = teams; // Save for search
       renderTeamList(1, teams);
       renderTeamList(2, teams);


       // Add search listeners
       const search1 = document.getElementById('team1_search');
       const search2 = document.getElementById('team2_search');
       if (search1) {
           search1.addEventListener('input', function() {
               filterTeams(1, search1.value);
           });
       }
       if (search2) {
           search2.addEventListener('input', function() {
               filterTeams(2, search2.value);
           });
       }
   })
}

function renderTeamList(slot, teams) {
    let html = '';
    teams.forEach(function(team){
        html += `<li onclick="selectTeam(${slot},'${team.name}')">${team.name}</li>`;
    });
    if (slot === 1) {
        document.getElementById('team1_list').innerHTML = html;
    } else {
        document.getElementById('team2_list').innerHTML = html;
    }
}

function filterTeams(slot, query) {
    query = query.trim().toLowerCase();
    let filtered = allTeams.filter(team => team.name.toLowerCase().includes(query));
    renderTeamList(slot, filtered);
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
       for (let i = 0; i < result.length; i++) {
           chainHTML += `<li>${result[i]}</li>`;
           if (i < result.length - 1) {
               chainHTML += '<li> &gt; </li>';
           }
       }
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


function getLeaderboard(algorithm = 'USAU') {
   //Endpoint: /leaderboard?algorithm=<SWCI|ELO|Massey>


   // Get url to be in leaderboard mode
   let url = getAPIBaseURL() + '/leaderboard?algorithm=' + algorithm;
   //send the request to the leaderboard API endpoint
   fetch(url, {method: 'get'})
   // When the results come back, transform them from a JSON string into
   // a Javascript object (in this case, a leaderboard).
   .then((response) => response.json())
   .then(function(result) {
       let leaderboardHTML = '<table><tr><th>Rank</th><th>Team</th></tr>';


       for (let k = 0; k < result.length; k++) {
           //in here, we want to populate the leaderboard with a list of teams in descending order by rank
           leaderboardHTML += `
                           <tr>
                               <td>${result[k].rank}</td>
                               <td>${result[k].team}</td>
                           </tr>
               `;
       }
       leaderboardHTML += '</table>';


       let selector = document.getElementById('leaderboard');
       if (selector) {
           selector.innerHTML = leaderboardHTML;
       }
   });


}

document.addEventListener("DOMContentLoaded", function() {
    const algoDropdown = document.getElementById('algorithm-dropdown');
    if (algoDropdown) {
        algoDropdown.querySelectorAll('li').forEach(function(li) {
            li.addEventListener('click', function() {
                const algorithm = li.textContent.trim();
                populateLineChart(algorithm);
            });
        });
        // Optionally, show default chart
        populateLineChart('USAU');
    }
});





