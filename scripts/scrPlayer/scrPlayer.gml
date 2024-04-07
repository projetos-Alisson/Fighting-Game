// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Movement(){
	
		hspeed = 0
		if (keyboard_check(vk_left)){ 

			hspeed = -vel; 
			
		
			
			
				
			
	
		}else if (keyboard_check(vk_right)){ 
			hspeed = vel
			image_xscale = 1;	
			
				
		
		}




		if (hspeed > 0 and sprite_index != sKakashi_right){
	
			image_index = 0;
			sprite_index = sKakashi_right;
		}
		
		else if (hspeed < 0 and sprite_index != sKakashi_left){
	
			image_index = 0;
			sprite_index = sKakashi_left;
		}
		

		else if (hspeed == 0 and sprite_index != sKakashi_idle){
			image_index = 0;
			hspeed = 0;
			sprite_index = sKakashi_idle;
		}


}

function PlayerIdleFacing(){
	
	if (keyboard_check_released(vk_left)){ 
		image_xscale = -1 }
	else if (keyboard_check(vk_left)){
		image_xscale = 1
	}
				
	
}
	
function Punch(){
	
	if sprite_index != sKakashi_Punch{
		image_index = 0;
		sprite_index = sKakashi_Punch;
		}
		
		//Estado parado
		if image_index >= 2{
			image_index = 2
			state = "Idle";
		}

	}
	
function HeavyAttack(){
	
	if sprite_index != sKakashi_HeavyAttack{
		image_index = 0;
		sprite_index = sKakashi_HeavyAttack;
		}
		
		//Estado parado
		if image_index >= image_number - 1{
			image_index = 3
			state = "Idle";
			
		}

	}
	
function Defense(){
	hspeed = 0;
	sprite_index = sKakashi_guard;
	
	if (keyboard_check_released(ord("C"))){
		state = "Idle";
		
	}	
}

function Jump(){
	
	var ground = place_meeting(x, y + 1, oGround);


	
	
	//Se não estou no chão
	if (!ground){
		vspeed += grav;	
		jump = false;
		
		
		//Paralizar último frame
		if image_index >= image_number -1{
				image_index = image_number - 1
			
		
			}
			
			var vel_jump = 6
			
		#region Maior controle no Pulo
			if (keyboard_check(vk_left)){ 
			
			
				hspeed = -vel_jump
				image_xscale = -1;
	
			}else if (keyboard_check(vk_right)){ 
				hspeed = vel_jump
				image_xscale = 1;	
			
				
		
			}
		
		#endregion
		
	
	
	//Se estou em terra firme
	}else{ vspeed = 0; y = 647;
		
	//Posso pular
	if (jump == true){
		vspeed -= jump_height;
	
	//Trocar Sprite
	 if(image_index != sKakashi_jump)
		image_index = 0
		sprite_index = sKakashi_jump;
			
			
		
		}
	}
	
	if (vspeed == 0 and jump == false and ground == true)
		state = "Idle"
	
	
}


function Shuriken(){
	PlayerIdleFacing()
	
	
	
	if (shuriken == true){
		var shuri = instance_create_layer(x,y, layer, oShuriken);
	
		shuri.speed = 12;
		shuri.direction = image_angle;
		shuri.image_angle += 5; 
		
		shuriken = false;
		
		//If the player is on the left
		if (image_xscale == -1) 
		
		shuri.direction = 180;
		
		//CONSERTAR QTD DE SHURIKENS
			if sprite_index != sKakashi_Shuriken{
				
				image_index = 0;
				image_speed = 0.5;
				sprite_index = sKakashi_Shuriken;
				hspeed = 0
		
				if image_index >= image_number -1{
					image_index = image_number - 1
			
			
			}
			
			
		}

	
	
			
	}
	

		if image_index >= image_number -1 {
			state = "Idle"
		
			
		}	
	
	
}
