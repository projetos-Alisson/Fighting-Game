

switch (state){
		
		case "Choose": 
		
			nextState = choose("Idle", "Move");
			
				state = nextState;			
		
		break;
		
		case "Idle":
			moving = 0;
		
		ChangeEnemySpriteIdle();
		EnemyFacing();
		CheckPlayer()
		
			if(alarm[0] <= 0){ 
				state = choose("Move");
				alarm = 30
				}
			
		break;
		
		case "Move":
			EnemyFacing();
			MoveToPlayer();
			ChangeEnemySprite();
			
				if(alarm[0] <= 0){ 
				state = choose("Idle", "Move", "Jump");
				alarm = 30
				}
		break;
	 
		case "Punch": 
		
			hspeed = 0;
			vspeed = 0;
			
			EnemyPunch()
		
		break;
		
		case "HeavyAttack":
			
			hspeed = 0;
			vspeed = 0;
			
			EnemyHeavyAttack();
			
		break;
		
		case "Defense":
		
			EnemyDefense();
			
			if(alarm[1] <= 0){ 
				state = choose("Punch", "HeavyAttack", "Move");
				alarm = 20
			}
		
		break
		
		case "Jump":
		
			EnemyJump()
			
		
		break;
	

}






























