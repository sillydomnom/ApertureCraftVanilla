repeat process ACV_gels (
/execute @a ~ ~ ~ detect ~ ~ ~ minecraft:carpet 1 /effect @p 1 1 6 true
/execute @a ~ ~ ~ detect ~ ~ ~ minecraft:air 0 /effect @p 1 0 6 true
/execute @a ~ ~ ~ detect ~ ~ ~ minecraft:carpet 11 /effect @p 8 1 3 true
/execute @a ~ ~ ~ detect ~ ~ ~ minecraft:air 0 /effect @p 8 0 3 true

/scoreboard players set @e[type=Item,name=ACV_BlueGel] OnGround 1 {OnGround:1b}
/execute @e[type=Item,name=ACV_BlueGel,score_OnGround_min=1] ~ ~ ~ /fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:carpet 11 keep
/execute @e[type=Item,name=ACV_BlueGel,score_OnGround_min=1] ~ ~ ~ /fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:carpet 11 replace minecraft:carpet 1
/kill @e[type=Item,name=ACV_BlueGel,score_OnGround_min=1]

/scoreboard players set @e[type=Item,name=ACV_OrangeGel] OnGround 1 {OnGround:1b}
/execute @e[type=Item,name=ACV_OrangeGel,score_OnGround_min=1] ~ ~ ~ /fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:carpet 1 keep
/execute @e[type=Item,name=ACV_OrangeGel,score_OnGround_min=1] ~ ~ ~ /fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:carpet 1 replace minecraft:carpet 11
/kill @e[type=Item,name=ACV_OrangeGel,score_OnGround_min=1]
)