event_inherited();

cd = 120; // Ability cooldown

// Sprite init
standSprite = Spr_Stick_Stand;
moveSprite = Spr_Stick_Move;
duckSprite = Spr_Stick_Duck;
jumpSprite = Spr_Stick_Jump;
stunnedSprite = Spr_Stick_Stunned;

// RGB RNG
image_blend = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));
