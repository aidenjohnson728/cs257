# NAME: cli.py - command-line interface exercise, Aiden Johnson, April 18th
# SYNOPSIS: python3 cli.py eventsby month
# DESCRIPTION: Shows a list of all events played in both Division 1 and Division 3 
# Ultimate Frisbee in any specified month from January to March

import json 
import argparse

#argparse set up, we want to show the ultimate frisbee months. 
parser = argparse.ArgumentParser(description = "Show all the Ultimate Frisbee events by month")
parser.add_argument("month", type=str, help="Month name (January, February, or March)")
parsed_arguments = parser.parse_args()

#Each month has a number associated wiht it on the data, so we want to map each month. This was directly copied from the argparse example
#you gave us. I made sure that either capitalized month or lowercase months work.
inputMonth = parsed_arguments.month
month_map = {"january": "1", "february": "2", "march": "3",
             "January": "1", "February": "2", "March": "3"}

#Now we want to get the string version of the motth - in either "1", "2", or "3". This uses our month map.
month = month_map.get(inputMonth)

#if we can't find the month in the month map (aka if it's not january february or march)..
if not month:
    print("Not a valid month, please choose January, February, or March!")
    exit()

#next, we open json up with our complete list of games from games.json
with open('games.json', 'r') as file:
    reader = json.load(file)

#filter and print the events from the specific month chosen. 
for game_row in reader:
    #Each iteration the date is captured. Then, we specifically get the month. Which is the second character of the date's string. (check json)
    dateString = game_row['date']
    eventMonth = dateString[1]

    #Since we've already mapped our month to associate with either '1', '2', or '3', this checks if the eventMonth is in the same month as what we want. 
    if eventMonth == month:
        #if it is, we print it! And do this for ALL the events.
        print(game_row['event'])