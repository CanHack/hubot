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

places = ["el Byblos", "el Rincón rociero", "el bar Se te va la tapa", "el Mariscal del Jamon"]

module.exports = (robot) ->
  robot.respond /(propon|di|sugiere|reserva) (un|otro) sitio/i, (msg) ->
    msg.reply msg.random places

  robot.hear /donde quedamos/i, (msg) ->
    msg.reply "Propongo quedar en " + msg.random places
