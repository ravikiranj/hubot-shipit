# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   hubot ship it - Display a motivation squirrel
#
# Author:
#   maddox, rjanardhana

squirrels = [
    "http://i.imgur.com/KJZV6Ss.png",
    "http://i.imgur.com/IRW9fs3.jpg",
    "http://i.imgur.com/ZhpfHCV.png",
    "http://i.imgur.com/ZAor7pT.jpg",
    "http://i.imgur.com/DtIzNzv.jpg",
    "http://i.imgur.com/KA5zbRH.jpg",
    "http://i.imgur.com/JFhBLK3.jpg",
    "http://i.imgur.com/eyec4EK.jpg"
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /ship(ping|z|s|ped)?\s*it/i
  else
    regex = /ship\s*it/i

  robot.respond regex, (msg) ->
    msg.send msg.random squirrels
