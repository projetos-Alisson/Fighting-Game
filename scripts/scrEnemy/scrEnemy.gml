function EnemyFacing(){
	
	
	//Change sprite side
	if (object_exists(oPlayer))
		if (oPlayer.x > x){
			image_xscale = abs(image_xscale);
		}
			else if (oPlayer.x < x){
					image_xscale = -abs(image_xscale);	
			}
	
	

}

function ChangeEnemySprite(){

	//Right
	if (vel_enemy >= 2 and sprite_index != sKakashi_right){
			sprite_index = sKakashi_right;
	} 
	//Left
	else if (vel_enemy < 2 and sprite_index != sKakashi_left){
			sprite_index = sKakashi_left;
	}

}

function ChangeEnemySpriteIdle(){
			//Idle
		
			//image_index = 0;
			hspeed = 0;
			sprite_index = sKakashi_idle;
}

function CheckPlayer(){
	
	//Teste de reação da IA no combate corpo a corpo
	if	distance_to_object(oPlayer) <= 5 /*and oPlayer.state == "Punch"*/{
		state = choose("Punch", "HeavyAttack", "Defense"); 
	}
	
}
function MoveToPlayer(){
	
		CheckPlayer()
		
		x += moving;
	
	if (instance_exists(oPlayer))
		if	distance_to_object(oPlayer) < room_width{
			
				var _target = point_direction(x, y, oPlayer.x, oPlayer.y);
				
				moving = lengthdir_x(vel_enemy, _target);
				show_debug_message(moving)
				x += moving;
				
		}
		else if (distance_to_object(oPlayer) > 70){
		
			x -= moving;
		}

}




function EnemyPunch(){
	
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

function EnemyHeavyAttack(){
	if sprite_index != sKakashi_HeavyAttack{
		image_index = 0;
		sprite_index = sKakashi_HeavyAttack;
		}
		
		//Estado parado
		if image_index >= 2{
			image_index = 2
			state = "Idle";
		}
	
}
function EnemyDefense(){
	sprite_index = sKakashi_guard;
	moving = 0;
	
}

function EnemyJump(){
		var ground = place_meeting(x, y + 1, oGround);


	
	
	//Se não estou no chão
	if (!ground){
		vspeed += grav;	
	
		
		//Paralizar último frame
		if image_index >= image_number -1{
				image_index = image_number - 1
				
	
		
			}
	
	
	//Se estou em terra firme
	}else{ vspeed = 0; 
		
	//Posso pular
	if (ground){
		
		jump = choose(true,false)
		
		if (jump == true){
			
		//Jump Speed 
		
		hspeed = choose(6, -6);
		vspeed -= jump_height;
	
	
			//Trocar Sprite
			 if(image_index != sKakashi_jump)
				image_index = 0
				sprite_index = sKakashi_jump;
				
				jump = false
			
			}else{
				state = choose("Move")
			}
		
		}
	}
	
	

	//Colission with ground
	

	
}