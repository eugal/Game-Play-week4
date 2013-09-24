package; 

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Player extends FlxSprite { 

	public function new():Void{ 
		super(FlxG.width/2, FlxG.height-20);
		makeGraphic(60,20, 0xffffffff);
	}

	override public function update():Void{ 
		super.update();

		velocity.x = 0;

		if(FlxG.keys.A == true){
			velocity.x = -300;
		}
		if(FlxG.keys.D == true){
			velocity.x = 300;
		}
//cast allows to reach out to screen 2
		if(FlxG.keys.justPressed("SPACE")){
			cast(FlxG.state, Screen2).bullets.add(new Bullet(x+20, y-20));
			FlxG.play("Shoot");
			

		}
	
		if(x < 0){
			x = 0;
		}
		if(x > FlxG.width-width){
			x = FlxG.width-width;
		}




	}
}