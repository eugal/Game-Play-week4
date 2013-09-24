package; 

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class EnemyBullet extends FlxSprite { 

	public function new(startX:Float, startY:Float):Void{
		super(startX, startY);
		makeGraphic(20,20,0xffdf6925);
		}

	override public function update():Void{
		velocity.y = 300;
		if(y < height){
			kill();
		}

		super.update();
	}
	}