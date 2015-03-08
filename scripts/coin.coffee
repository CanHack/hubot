# Description:
#   Help decide between two things
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lanza una moneda - Jugar a cara o cruz
#
# Author:
#   mrtazz

thecoin = ["cara", "cruz"]

module.exports = (robot) ->
  robot.respond /(lanzar|tirar|tira|lanza) una moneda/i, (msg) ->
    msg.reply msg.random thecoin
