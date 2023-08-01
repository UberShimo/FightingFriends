event_inherited();

cd = 0; // Charlottes ability work pretty unique

// Sprite init
standSprite = Spr_Charlotte_Stand;
moveSprite = Spr_Charlotte_Move;
duckSprite = Spr_Charlotte_Duck;
jumpSprite = Spr_Charlotte_Jump;
stunnedSprite = Spr_Charlotte_Stunned;

// Spawn the boar!
instance_create_depth(x, y, 5, Obj_Boar_P2);