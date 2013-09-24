package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class Screen1 extends FlxState {

	var t:FlxText; 

	// Function called when screen is created. Generally used to set things up
	override public function create():Void {
		// Set a background color
		FlxG.bgColor = 0xffaa0000;

		t = new FlxText(0,200,640, "Press Any Key to Start");
		t.font = "assets/Times New Roman.ttf";
		t.size = 40;
		t.alignment = "center";
		add(t); 



		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {

			if(FlxG.keys.any() == true){
			FlxG.switchState(new Screen2());
		}
		// Do everything which FlxState normally does every frame
		super.update();
	}	
}