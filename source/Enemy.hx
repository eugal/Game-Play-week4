package; 

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite { 

	var bulletTimer:Float;

	public function new(startX:Float, startY:Float):Void{ 
		super(startX+10,startY);
		makeGraphic(60,20, 0xffffffff);
		bulletTimer = (FlxG.random()*2)+2;
	}

	override public function update():Void{ 
		bulletTimer -= FlxG.elapsed;

		if(bulletTimer < 0){
			cast(FlxG.state, Screen2).enemyBullets.add(new EnemyBullet(x + 20, y +20));
			bulletTimer = (FlxG.random()*2)+2;
		}

		super.update();

	}
}
