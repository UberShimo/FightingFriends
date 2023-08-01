event_inherited();

cd = 120; // Ability cooldown

// Sprite init
standSprite = Spr_Jenny_Dance;
moveSprite = Spr_Jenny_Move;
duckSprite = Spr_Jenny_Duck;
jumpSprite = Spr_Jenny_Jump;
stunnedSprite = Spr_Jenny_Stunned;

dancePower = 0; // Jennys dance power

// Spawn dance bar
instance_create_depth(Obj_Player2_HP_Bar.x, Obj_Player2_HP_Bar.y+256, 20, Obj_Player2_Jenny_Dance_Frame);

// Start disco eff alarm
alarm[5] = 10;