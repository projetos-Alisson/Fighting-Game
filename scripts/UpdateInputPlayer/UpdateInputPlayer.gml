// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function UpdateInputPlayer(){
	vel = 0;
	
	if keyboard_check_pressed(vk_right)
		vel = -1 * image_xscale;
		
	if keyboard_check_pressed(vk_left)
		vel = 1 * image_xscale;
		
	punch = keyboard_check_pressed(ord("Z"));
	heavy_attack = keyboard_check_pressed(ord("X"));
}