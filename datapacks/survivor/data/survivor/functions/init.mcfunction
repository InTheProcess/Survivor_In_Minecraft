#CHALLENGES
scoreboard objectives add sr.spc.mot_x dummy
scoreboard objectives add sr.spc.mot_y dummy
scoreboard objectives add sr.spc.mot_z dummy
scoreboard objectives add sr.chl.tmr dummy
scoreboard objectives add sr.chl.tmr_dec dummy
scoreboard objectives add sr.chl.tmr_mx dummy
scoreboard objectives add sr.chl.tmr_typ dummy
#resets after 2 ticks
scoreboard objectives add sr.chl.tmr_tck dummy

#TEAMS
team add sr.host
team add sr.tm.red
team add sr.tm.blue

team modify sr.host color dark_purple
team modify sr.host prefix [{"text":" [","color":"gold"},{"text":"Host","color":"yellow"},{"text":"] ","color":"gold"}]

team modify sr.tm.red color red
team modify sr.tm.red deathMessageVisibility hideForOtherTeams
team modify sr.tm.red color blue
team modify sr.tm.red friendlyFire false
team modify sr.tm.red seeFriendlyInvisibles true
team modify sr.tm.red collisionRule pushOtherTeams

team modify sr.tm.red color red
team modify sr.tm.blue deathMessageVisibility hideForOtherTeams
team modify sr.tm.blue color blue
team modify sr.tm.blue friendlyFire false
team modify sr.tm.blue seeFriendlyInvisibles true
team modify sr.tm.blue collisionRule pushOtherTeams

#GLOBAL
gamerule keepInventory true