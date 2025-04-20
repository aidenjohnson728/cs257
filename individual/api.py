#!/usr/bin/env python3
'''
    api.py 
    Aiden Johnson, April 20 2025

    Flask sample app that displays lists of frisbee events based around the month that event took place in. 
    Whether that be January, February, or March.
    A lot of the bones for this code were directly taken from Jeff Ondich's "flask_sample.py"
    
'''
import sys
import argparse
import flask
import json

with open('games.json', 'r') as file:
    reader = json.load(file)

app = flask.Flask(__name__)


@app.route('/')
def hello():
    return 'Welcome to Aiden\'s awesome website. Use /help if you need help.'

@app.route('/help')
def help():
    return 'If you want to see frisbee events from the month of January, use /january. \n If you want to see frisbee events from the month of February, use /february. \n If you want to see frisbee events from the month of March, use /march.'

@app.route('/january')
def makeJanList():
    janList = []
    for game_row in reader:
    #With each iteration the date is captured. Then, we specifically get the month. Which is the second character of the date's string. (check json)
        dateString = game_row['date']
        eventMonth = dateString[1]

    #Since we've already mapped our month to associate with either '1', '2', or '3', this checks if the eventMonth is in the same month as what we want. 
        if eventMonth == '1':
        #if it is, we append it to our list. And do this for ALL the events.
           janList.append(game_row['event'])
    
    return json.dumps(janList)

@app.route('/february')
def makeFebList():
    febList = []
    for game_row in reader:
    #Each iteration the date is captured. Then, we specifically get the month. Which is the second character of the date's string. (check json)
        dateString = game_row['date']
        eventMonth = dateString[1]

    #Since we've already mapped our month to associate with either '1', '2', or '3', this checks if the eventMonth is in the same month as what we want. 
        if eventMonth == '2':
        #if it is, we append it to our list. And do this for ALL the events.
           febList.append(game_row['event'])
    
    return json.dumps(febList)

@app.route('/march')
def makeMarList():
    marList = []
    for game_row in reader:
    #Each iteration the date is captured. Then, we specifically get the month. Which is the second character of the date's string. (check json)
        dateString = game_row['date']
        eventMonth = dateString[1]

    #Since we've already mapped our month to associate with either '1', '2', or '3', this checks if the eventMonth is in the same month as what we want. 
        if eventMonth == '3':
        #if it is, we append it to our list. And do this for ALL the events.
           marList.append(game_row['event'])
    
    return json.dumps(marList)

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A sample Flask application/API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
