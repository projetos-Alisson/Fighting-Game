// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function UpdatePunch(){
	hspeed = 0;
	vspeed = 0;
	
if (keyboard_check(vk_left))
	nextState = 1;
if (keyboard_check(vk_right))
	nextState = 2;
}