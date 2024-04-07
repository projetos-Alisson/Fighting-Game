// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function UpdateMoveBack(){
	hspeed = vel;
	vspeed = 0;

//Check if we have to change the state
if (!keyboard_check(vk_right))
	nextState = 0;
	
}