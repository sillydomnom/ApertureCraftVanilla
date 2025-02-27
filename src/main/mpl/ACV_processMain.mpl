# Description: Processes the AS-ACV_Main regarding the SCV-color-Color
# Params: AS-ACV_Main, SCV-color-Color
# Return:
process ACV_processMain (

/kill @e[name=ACV_Up]
/kill @e[name=ACV_Down]
/kill @e[name=ACV_South]
/kill @e[name=ACV_East]
/kill @e[name=ACV_North]
/kill @e[name=ACV_West]

# TODO: Werte (0.95) kontrollieren
/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /summon ArmorStand ~ ~0.9 ~ {CustomName:"ACV_Up",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /summon ArmorStand ~ ~-0.95 ~ {CustomName:"ACV_Down",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /summon ArmorStand ~ ~ ~0.95 {CustomName:"ACV_South",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /summon ArmorStand ~0.95 ~ ~ {CustomName:"ACV_East",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /summon ArmorStand ~ ~ ~-0.95 {CustomName:"ACV_North",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /summon ArmorStand ~-0.95 ~ ~ {CustomName:"ACV_West",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

/execute @e[type=ArmorStand,name=ACV_Main] ~ ~ ~ /scoreboard players tag @e[type=ArmorStand,dx=0] add ACV_DV_PARAM
/scoreboard players tag @e[type=ArmorStand,name=ACV_Main] remove ACV_DV_PARAM

start ACV_createPortal
)