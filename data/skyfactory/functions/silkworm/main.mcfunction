tag @s[nbt=!{SelectedItem:{tag:{sf.item:"skyfactory:silk_worm"}}}] remove sf.holdingsilk
gamemode adventure @s[tag=sf.holdingsilk,gamemode=!adventure]
gamemode survival @s[tag=sf.holdingsilk,gamemode=adventure,nbt=!{SelectedItem:{tag:{sf.item:"skyfactory:silk_worm"}}}]
tag @s[nbt={SelectedItem:{tag:{sf.item:"skyfactory:silk_worm"}}}] add sf.holdingsilk
