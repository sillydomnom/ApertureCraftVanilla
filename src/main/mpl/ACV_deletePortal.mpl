# Description: Deletes a Portal
# Params: ASwT-ACV_deletePortal_PARAM
# Return:



process ACV_deletePortal (

# Trigger the AntiBridge at every specified Portal
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=0,score_ACV_COLOR=1] ~ ~ ~ execute @e[name=ACV_PortalOut,score_ACV_COLOR_min=0,score_ACV_COLOR=1] ~ ~ ~ entitydata @e[name=ACV_AntiBridge_WIP,dx=0] {CustomName:"ACV_AntiBridge"}
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=2,score_ACV_COLOR=3] ~ ~ ~ execute @e[name=ACV_PortalOut,score_ACV_COLOR_min=2,score_ACV_COLOR=3] ~ ~ ~ entitydata @e[name=ACV_AntiBridge_WIP,dx=0] {CustomName:"ACV_AntiBridge"}

# Close the connection between the two portals specified by the color
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=0,score_ACV_COLOR=1] ~ ~ ~ execute @e[name=ACV_PortalIn,score_ACV_COLOR_min=0,score_ACV_COLOR=0] ~ ~ ~ clone 0 1 0 0 2 0 ~ ~ ~
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=0,score_ACV_COLOR=1] ~ ~ ~ execute @e[name=ACV_PortalIn,score_ACV_COLOR_min=1,score_ACV_COLOR=1] ~ ~ ~ clone 1 1 0 1 2 0 ~ ~ ~
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=2,score_ACV_COLOR=3] ~ ~ ~ execute @e[name=ACV_PortalIn,score_ACV_COLOR_min=2,score_ACV_COLOR=2] ~ ~ ~ clone 2 1 0 2 2 0 ~ ~ ~
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=2,score_ACV_COLOR=3] ~ ~ ~ execute @e[name=ACV_PortalIn,score_ACV_COLOR_min=3,score_ACV_COLOR=3] ~ ~ ~ clone 3 1 0 3 2 0 ~ ~ ~

# Delete the Portals
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=0,score_ACV_COLOR=0] ~ ~ ~ kill @e[score_ACV_COLOR_min=0,score_ACV_COLOR=0]
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=1,score_ACV_COLOR=1] ~ ~ ~ kill @e[score_ACV_COLOR_min=1,score_ACV_COLOR=1]
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=2,score_ACV_COLOR=2] ~ ~ ~ kill @e[score_ACV_COLOR_min=2,score_ACV_COLOR=2]
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=3,score_ACV_COLOR=3] ~ ~ ~ kill @e[score_ACV_COLOR_min=3,score_ACV_COLOR=3]

# Light the remaining Floor/Ceiling Portals
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=0,score_ACV_COLOR=0] ~ ~ ~ execute @e[type=ArmorStand,name=ACV_PortalDisplay,score_ACV_COLOR_min=1,score_ACV_COLOR=1] ~ ~ ~ setblock ~ ~2 ~ barrier
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=1,score_ACV_COLOR=1] ~ ~ ~ execute @e[type=ArmorStand,name=ACV_PortalDisplay,score_ACV_COLOR_min=0,score_ACV_COLOR=0] ~ ~ ~ setblock ~ ~2 ~ barrier
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=2,score_ACV_COLOR=2] ~ ~ ~ execute @e[type=ArmorStand,name=ACV_PortalDisplay,score_ACV_COLOR_min=3,score_ACV_COLOR=3] ~ ~ ~ setblock ~ ~2 ~ barrier
/execute @e[tag=ACV_deletePortal_PARAM,score_ACV_COLOR_min=3,score_ACV_COLOR=3] ~ ~ ~ execute @e[type=ArmorStand,name=ACV_PortalDisplay,score_ACV_COLOR_min=2,score_ACV_COLOR=2] ~ ~ ~ setblock ~ ~2 ~ barrier

# Kill the Params
/kill @e[tag=ACV_deletePortal_PARAM]

notify
)
