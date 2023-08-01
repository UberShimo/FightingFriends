h_speed = 0; // Needs to ne set when spawned so it walk toward decided direction

cigg = instance_create_depth(Obj_Player2_HP_Bar.x, Obj_Player2_HP_Bar.y, -20, Obj_William_Cigg);
cigg.image_xscale = -1;

alarm[0] = Obj_Player2.cd - 60;