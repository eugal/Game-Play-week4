package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.util.FlxTimer;

class Screen3 extends FlxState {

	var timer:FlxTimer; 

	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		// Set a background color
		FlxG.bgColor = 0xffaa0000;

		timer = new FlxTimer();
//timer can be added anywhere
		timer.start(5);


		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {

		if(FlxG.keys.any() == true){
		FlxG.switchState(new Screen1());
	}

	FlxG.log(timer.timeLeft);

		if(timer.finished == true){
		FlxG.switchState(new Screen1());
		}

		// Do everything which FlxState normally does every frame
		super.update();
	}	
}