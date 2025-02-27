repeat process ACV_lightBridges (
/kill @e[type=ArmorStand,name=ACV_LightBridge,rxm=-90,rx=-1]
/kill @e[type=ArmorStand,name=ACV_LightBridge,rxm=1,rx=90]
/scoreboard players tag @e[type=ArmorStand,name=ACV_LightBridge] remove ACV_InAir
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 scoreboard players tag @e[r=0,c=1] add ACV_InAir
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ detect ~ ~ ~ minecraft:carpet 3 scoreboard players tag @e[r=0,c=1] add ACV_InAir
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ detect ~ ~ ~ minecraft:piston_extension 0 execute @e[r=0,c=1] ~ ~ ~ detect ~ ~1 ~ minecraft:carpet 3 scoreboard players tag @e[r=0,c=1] add ACV_InAir
/execute @e[type=ArmorStand,name=ACV_LightBridge,tag=!ACV_InAir] ~ ~ ~ scoreboard players tag @e[name=ACV_PortalIn,dx=0] add ACV_CLB_PARAM
/entitydata @e[type=ArmorStand,name=ACV_LightBridge,tag=!ACV_InAir] {CustomName:"ACV_LightBridgeEnd"}
conditional: /execute @e[name=ACV_calculateLightBridges] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ detect ~ ~1 ~ minecraft:carpet 3 summon ArmorStand ~ ~1 ~ {CustomName:"ACV_BridgeBelow",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ detect ~ ~ ~ minecraft:carpet 3 summon ArmorStand ~ ~ ~ {CustomName:"ACV_BridgeCross",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ detect ~ ~-1 ~ minecraft:carpet 3 summon ArmorStand ~ ~ ~ {CustomName:"ACV_BridgeBelow",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ setblock ~ ~-1 ~ minecraft:piston_extension 0 keep
/execute @e[type=ArmorStand,name=ACV_LightBridge] ~ ~ ~ setblock ~ ~ ~ minecraft:carpet 3
/tp @e[type=ArmorStand,name=ACV_LightBridge,rym=45,ry=135] ~-1 ~ ~
/tp @e[type=ArmorStand,name=ACV_LightBridge,rym=135,ry=-135] ~ ~ ~-1
/tp @e[type=ArmorStand,name=ACV_LightBridge,rym=-135,ry=-45] ~1 ~ ~
/tp @e[type=ArmorStand,name=ACV_LightBridge,rym=-45,ry=45] ~ ~ ~1

/entitydata @e[name=ACV_LightBridge_WIP] {CustomName:"ACV_LightBridge"}
)
