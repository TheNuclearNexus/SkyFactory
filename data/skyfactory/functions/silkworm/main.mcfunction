tag @s[nbt=!{SelectedItem:{tag:{sf.item:"skyfactory:silk_worm"}}}] remove holdingsilk
tag @s[nbt={SelectedItem:{tag:{sf.item:"skyfactory:silk_worm"}}}] add sf.holdingsilk
gamemode adventure @s[tag=holdingsilk,gamemode=!adventure]
gamemode survival @s[tag=holdingsilk,gamemode=adventure,nbt=!{SelectedItem:{tag:{sf.item:"skyfactory:silk_worm"}}}]
