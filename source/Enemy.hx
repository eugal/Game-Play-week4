package; 

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class Enemy extends FlxSprite { 

	public function new(startX:Float, startY:Float):Void{ 
		super(startX+10,startY);
		makeGraphic(60,20, 0xffffffff);
	}

	override public function update():Void{ 
		super.update();

	}
}
