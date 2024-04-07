/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


#region Teclas
if keyboard_check_pressed(ord("Z")) and state != "Jump" {
	state = "Punch";
		
}

if keyboard_check_pressed(ord("X")) and state != "Jump"  {
	state = "HeavyAttack";	

}

if keyboard_check_pressed(ord("C")) and state != "Jump" {
	state = "Defense";	
	
}

if keyboard_check_pressed(ord("D")) and state != "Jump" {
	state = "Shuriken";
	shuriken = true;
}


if keyboard_check_pressed(vk_up){
	state = "Jump"
	jump = true

}

#endregion 







//Update the player inputs
//UpdateInputPlayer();
PlayerIdleFacing()

switch (state){
	
		case "Idle": 
		
			hspeed = 0;
			vspeed = 0;	
			Movement()
			
		
		break;
	
	 
		case "Punch": 
		
			hspeed = 0;
			vspeed = 0;
			
			Punch();
		break;
		
		case "HeavyAttack":
			
			hspeed = 0;
			vspeed = 0;
			
			HeavyAttack();
		break;
		
			case "Shuriken":
			
			
			Shuriken();
		break;
	
		case "Defense":
			
			
			Defense();
		break;
		
		case "Jump":
			
			Jump(); 
			
	
		#region Se ataquei no ar 
		
		if (state == "Jump" and keyboard_check_pressed(ord("Z"))){
			 if sprite_index != sKakashi_punch_jump
				sprite_index = sKakashi_punch_jump;
				
				if sprite_index == sKakashi_punch_jump
				
				
				if (image_index >= image_number -1)
					image_index = image_number - 1
					
				
				
				
			
			
		}
		
		#endregion
		break;
		
		
}
























