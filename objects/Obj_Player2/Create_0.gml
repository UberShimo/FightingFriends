controllable = false; // Controls if you can control your character or not
isCPU = false;

HP = 100;
cd = 120; // Ability cooldown
ms = 12; // speed
jumpPower = 56;
weight = 4;
action = "none";
abilityReady = true;
grounded = false;

// Input init
right_check = false;
left_check = false;
down_check = false;
up_check = false;
up_pressed = false;

attack_check = false;
ability_check = false;

// Sprite init
standSprite = Spr_Stick_Stand;
moveSprite = Spr_Stick_Move;
duckSprite = Spr_Stick_Duck;
jumpSprite = Spr_Stick_Jump;
stunnedSprite = Spr_Stick_Stunned;