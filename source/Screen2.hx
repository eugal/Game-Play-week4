package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.FlxGroup;

class Screen2 extends FlxState {

	var player:Player;
	var enemies:FlxGroup;
	var numenemies:Int; 
	var numkills:Int;
	public var bullets:FlxGroup;

	// Function called when screen is created. Generally used to set things up
	override public function create():Void {

		bullets = new FlxGroup();
		add(bullets);

		player = new Player();
		add(player);

		numenemies = 10;
		numkills = 20;



//for loop, does the thing inside X times
		enemies = new FlxGroup();
		for (i in 0...numenemies){
			enemies.add(new Enemy(i *80,100));
			enemies.add(new Enemy(i *80,60));
		}
		add(enemies);


		//enemies.add(new Enemy(200,300));



		// Set a background color
		FlxG.bgColor = 0xff83a697;
		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		//when enemies and bullets overlap do hitEnemy 
		FlxG.overlap(enemies,bullets,hitEnemy);

		if(numkills == 0){
			FlxG.switchState(new Screen3());
		}

	

		// Do everything which FlxState normally does every frame
		super.update();
	}	

	public function hitEnemy(enemy:Enemy, bullet:Bullet):Void {
		enemy.kill(); 
		bullet.kill(); 
		numkills--; 


	}
}