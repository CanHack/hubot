# Description:
#   Sugiere un punto de encuentro
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot di un sitio - Sugiere un lugar para quedar
#
# Author:
#   mrtazz

places = ["Byblos", "3D Soma", "Se te va la tapa", "El mariscal del jamon"]

module.exports = (robot) ->
  robot.respond /(propon|di|sugiere|reserva) (un|otro) sitio/i, (msg) ->
    msg.reply msg.random places

  robot.hear /donde quedamos/i, (msg) ->
    msg.reply "Propongo quedar en " + msg.random places
