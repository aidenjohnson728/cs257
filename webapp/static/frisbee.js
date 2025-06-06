// frisbee.js
// Javascript for Frisbee Stats web app: handles API calls, DOM updates, and UI logic.

window.addEventListener("load", initialize);


let team1Selected = null; //For use in the team1 dropdown
let team2Selected = null; //For use in the team2 dropdown
let allTeams = []; // Store all teams for searching
let allTeamsForTeamsPage = []; // Store all teams for teams.html search

function initialize() {
   // Initialize page-specific logic based on present elements.
   if (document.getElementById("teams_list")) {//teams
       getTeams();
       setupTeamsSearch();
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
   fetch(url, {method: 'get'})
   .then((response) => response.json())
   .then(function(result) {
       allTeamsForTeamsPage = result; // Save for search filtering
       renderTeamsList(result);
   })
   .catch(function(error) {
       console.log(error);
   });
}

function renderTeamsList(teams) {
    let teamsHTML = '';
    for (let k = 0; k < teams.length; k++) {
        teamsHTML += `<li>
                        <a href="/teampage.html?team=${encodeURIComponent(teams[k].name)}">
                        ${teams[k].name}
                        </a>
                    </li>`;
    }
    let selector = document.getElementById('teams_list');
    if (selector) {
        selector.innerHTML = teamsHTML;
    }
}

function setupTeamsSearch() {
    const searchInput = document.getElementById('teams_search');
    if (!searchInput) return;
    searchInput.addEventListener('input', function() {
        const query = searchInput.value.trim().toLowerCase();
        const filtered = allTeamsForTeamsPage.filter(team =>
            team.name.toLowerCase().includes(query)
        );
        renderTeamsList(filtered);
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
   .then((response) => {
       const ul = document.querySelector('#chain_output ul');
       if (!response.ok) {
           // If 404 or other error, show the sorry message
           if (ul) ul.innerHTML = '<li>Sorry, but your team is not better than my team</li>';
           return null;
       }
       return response.json();
   })
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

function initializeGlobalSearchBar() {
    const globalSearchBarContainer = document.getElementById('global-search-bar-container');
    if (globalSearchBarContainer && !globalSearchBarContainer.hasChildNodes()) {
        globalSearchBarContainer.innerHTML = `
          <div class="global-search-dropdown" id="global-search-dropdown">
            <input type="text" id="global_team_search" placeholder="Search teams..." autocomplete="off">
            <ul id="global_team_list" class="global-team-list-dropdown"></ul>
          </div>
        `;

        fetch('/api/teams')
          .then(res => res.json())
          .then(function(teams) {
            let allTeams = teams;
            const searchInput = document.getElementById('global_team_search');
            const dropdown = document.getElementById('global-search-dropdown');
            const list = document.getElementById('global_team_list');

            function renderList(filtered) {
              list.innerHTML = filtered.map(team =>
                `<li>${team.name}</li>`
              ).join('');
            }

            renderList([]);

            searchInput.addEventListener('input', function() {
              const query = searchInput.value.trim().toLowerCase();
              if (query.length === 0) {
                list.innerHTML = '';
                dropdown.classList.remove('open');
                return;
              }
              const filtered = allTeams.filter(team =>
                team.name.toLowerCase().includes(query)
              );
              renderList(filtered);
              dropdown.classList.add('open');
            });

            searchInput.addEventListener('focus', function() {
              if (searchInput.value.trim().length > 0) {
                dropdown.classList.add('open');
              }
            });

            document.addEventListener('mousedown', function(e) {
              if (!dropdown.contains(e.target)) {
                dropdown.classList.remove('open');
              }
            });

            list.addEventListener('click', function(e) {
              if (e.target.tagName === 'LI') {
                const teamName = e.target.textContent;
                window.location.href = '/teampage.html?team=' + encodeURIComponent(teamName);
              }
            });
          });
    }
}

// Ensure the global search bar is initialized on every page
document.addEventListener('DOMContentLoaded', initializeGlobalSearchBar);
window.addEventListener('load', initializeGlobalSearchBar);

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

// --- Navbar icon highlight logic for all pages ---
document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.nav-icon').forEach(function(icon){
    var link = icon.parentElement;
    var href = link.getAttribute('href');
    // Add leading slash if missing
    if (href && !href.startsWith('/')) {
      href = '/' + href;
    }
    // On hover, use light
    link.addEventListener('mouseenter', function() {
      icon.src = icon.getAttribute('image-light');
    });
    // On leave use dark unless this is the current page
    link.addEventListener('mouseleave', function() {
      // Special case for teampage.html highlighting Teams
      if (
        (window.location.pathname === href) ||
        (window.location.pathname.startsWith('/teampage') && href === '/teams.html')
      ) {
        icon.src = icon.getAttribute('image-light');
      } else {
        icon.src = icon.getAttribute('image-dark');
      }
    });
    // On page load set to light if this is current page
    if (
      (window.location.pathname === href) ||
      (window.location.pathname.startsWith('/teampage') && href === '/teams.html')
    ) {
      icon.src = icon.getAttribute('image-light');
    } else {
      icon.src = icon.getAttribute('image-dark');
    }
  });
});

// --- Dropdown logic for leaderboard algorithm selector ---
document.addEventListener('DOMContentLoaded', function() {
  var leaderboardDropdown = document.getElementById('leaderboard-dropdown');
  var leaderboardButton = document.getElementById('algorithm-button');
  var leaderboardUl = document.getElementById('algorithm-dropdown');
  // Only run on leaderboard.html
  if (leaderboardDropdown && leaderboardButton && leaderboardUl) {
    // Set default button text
    leaderboardButton.textContent = 'USAU ▼';
    leaderboardButton.addEventListener('click', function(e) {
      e.stopPropagation();
      leaderboardDropdown.classList.toggle('open');
      leaderboardUl.style.display = leaderboardDropdown.classList.contains('open') ? 'block' : 'none';
    });
    // Hide dropdown when clicking outside
    document.addEventListener('mousedown', function(e) {
      if (!leaderboardDropdown.contains(e.target)) {
        leaderboardDropdown.classList.remove('open');
        leaderboardUl.style.display = 'none';
      }
    });
    // When an option is clicked, close the dropdown, update button, and call getLeaderboard
    leaderboardUl.querySelectorAll('li').forEach(function(li) {
      li.addEventListener('click', function() {
        leaderboardDropdown.classList.remove('open');
        leaderboardUl.style.display = 'none';
        leaderboardButton.textContent = li.textContent + ' ▼';
        getLeaderboard(li.getAttribute('data-alg') || li.textContent.trim());
      });
    });
  }
});

// --- Dropdown logic for teampage algorithm selector ---
document.addEventListener('DOMContentLoaded', function() {
  var algoDropdownContainer = document.getElementById('algorithm-dropdown-container');
  var algoButton = document.getElementById('algorithm-button');
  var algoUl = document.getElementById('algorithm-dropdown');
  // Only run on teampage.html
  if (algoDropdownContainer && algoButton && algoUl) {
    // Set default button text
    algoButton.textContent = 'USAU ▼';
    algoButton.onclick = function(e) {
      e.stopPropagation();
      algoUl.style.display = (algoUl.style.display === 'block') ? 'none' : 'block';
    };
    // Hide dropdown when clicking outside
    document.addEventListener('mousedown', function(e) {
      if (!algoButton.contains(e.target) && !algoUl.contains(e.target)) {
        algoUl.style.display = 'none';
      }
    });
    // Add click handlers for algorithm options
    algoUl.querySelectorAll('li').forEach(function(li) {
      li.addEventListener('click', function() {
        var algorithm = li.getAttribute('data-alg') || li.textContent.trim();
        algoButton.textContent = algorithm + ' ▼';
        algoUl.style.display = 'none';
        populateLineChart(algorithm);
      });
    });
  }
});





