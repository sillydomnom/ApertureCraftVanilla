repeat process ACV_teleportation (
/scoreboard players reset @e ACV_TP_FROM
/scoreboard players reset @e ACV_TP_UNEVEN
/scoreboard players reset @e ACV_TP_TO

/execute @e[name=ACV_PortalIn] ~ ~ ~ /scoreboard players operation @e[tag=!ACV_TpProof,dx=0] ACV_TP_FROM = @e[r=0,c=1] ACV_COLOR
/scoreboard players reset @e[name=ACV_LightBridge] ACV_TP_FROM
/scoreboard players reset @e[name=ACV_LightBridgeEnd] ACV_TP_FROM
/scoreboard players reset @e[name=ACV_AntiBridge] ACV_TP_FROM
/execute @e[score_ACV_TP_FROM_min=0] ~ ~ ~ /scoreboard players operation @e[r=0,c=1] ACV_TP_TO = @e[r=0,c=1] ACV_TP_FROM
/execute @e[score_ACV_TP_FROM_min=0] ~ ~ ~ /scoreboard players operation @e[r=0,c=1] ACV_TP_UNEVEN = @e[r=0,c=1] ACV_TP_FROM
/scoreboard players operation @e[score_ACV_TP_FROM_min=0] ACV_TP_UNEVEN %= 2 ACV_CONSTANT
/scoreboard players add @e[score_ACV_TP_UNEVEN_min=0,score_ACV_TP_UNEVEN=0] ACV_TP_TO 1
/scoreboard players remove @e[score_ACV_TP_UNEVEN_min=1,score_ACV_TP_UNEVEN=1] ACV_TP_TO 1

/tp @e[score_ACV_TP_TO_min=0,score_ACV_TP_TO=0] @e[name=ACV_PortalOut,score_ACV_COLOR_min=0,score_ACV_COLOR=0]
/tp @e[score_ACV_TP_TO_min=1,score_ACV_TP_TO=1] @e[name=ACV_PortalOut,score_ACV_COLOR_min=1,score_ACV_COLOR=1]
/tp @e[score_ACV_TP_TO_min=2,score_ACV_TP_TO=2] @e[name=ACV_PortalOut,score_ACV_COLOR_min=2,score_ACV_COLOR=2]
/tp @e[score_ACV_TP_TO_min=3,score_ACV_TP_TO=3] @e[name=ACV_PortalOut,score_ACV_COLOR_min=3,score_ACV_COLOR=3]
)
