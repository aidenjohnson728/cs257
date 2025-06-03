// frisbee.js
// Javascript for Frisbee Stats web app: handles API calls, DOM updates, and UI logic.

window.addEventListener("load", initialize);


let team1Selected = null; //For use in the team1 dropdown
let team2Selected = null; //For use in the team2 dropdown
let allTeams = []; // Store all teams for searching


function initialize() {
   // Initialize page-specific logic based on present elements.
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
// Returns the base URL of the API, onto which endpoint components can be appended.
function getAPIBaseURL() {
   let baseURL = window.location.protocol
                   + '//' + window.location.hostname
                   + ':' + window.location.port
                   + '/api';
   return baseURL;
}


function getTeams() {
   // Fetch and display all teams on the teams page.
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
   // Fetch and display all games for a team on the team page.
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
    // Fetch and plot ranking history for a team.
    const params = new URLSearchParams(window.location.search);
    const team = params.get('team');
    if (!team) return;

    let url = getAPIBaseURL() + '/teampage?team=' + encodeURIComponent(team) + '&algorithm=' + encodeURIComponent(algorithm);
    fetch(url)
        .then(res => res.json())
        .then(result => {
            const dates = result.rankings.map(r => r.date);
            const ranks = result.rankings.map(r => r.rank);

            document.getElementById('rank-header').innerHTML = `Rank: ${result.rankings[0].rank}`;

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
    // Load all teams into dropdowns for MTIBTYT page.
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

       // Setup dropdown show/hide
       setupTeamSearchDropdown(1);
       setupTeamSearchDropdown(2);
   })
}

function renderTeamList(slot, teams) {
    // Render the team list for a dropdown.
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
    // Filter teams in dropdown by search query.
    query = query.trim().toLowerCase();
    let filtered = allTeams.filter(team => team.name.toLowerCase().includes(query));
    renderTeamList(slot, filtered);
}

function selectTeam(slot, teamName) {
   // Set selected team for MTIBTYT comparison.
   if (slot === 1) {
       team1Selected = teamName;
       document.getElementById('team1_header').innerHTML = teamName;
   } else {
       team2Selected = teamName;
       document.getElementById('team2_header').innerHTML = teamName;
   }
}


function getChain() {
   // Fetch and display the beat-chain between two teams.
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
 // Handle click for showing the chain of pain.
 // make sure both teams are picked
 if (!team1Selected || !team2Selected) {
   alert("Please select both Team 1 and Team 2 first.");
   return;
 }
 getChain();
}


function getLeaderboard(algorithm = 'USAU') {
   // Fetch and display leaderboard for a given algorithm.
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

function setupTeamSearchDropdown(slot) {
    const container = document.querySelector(slot === 1 ? '.team-search-dropdown input#team1_search' : '.team-search-dropdown input#team2_search').parentElement;
    const input = container.querySelector('input');
    const list = container.querySelector('ul');

    // Show dropdown on focus or input
    input.addEventListener('focus', () => {
        container.classList.add('open');
    });
    input.addEventListener('input', () => {
        container.classList.add('open');
    });

    // Hide dropdown when clicking outside
    document.addEventListener('mousedown', function handler(e) {
        if (!container.contains(e.target)) {
            container.classList.remove('open');
        }
    });

    // Hide dropdown after selection
    list.addEventListener('click', function(e) {
    if (e.target.tagName === 'LI') {
        container.classList.remove('open');
    }
});
}





