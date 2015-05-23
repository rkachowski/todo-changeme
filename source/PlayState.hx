package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	var _mapWidth = 2820;
	var _bg:FlxSprite;
	var _cameraFocus:FlxSprite;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		FlxG.worldBounds.set(0,0,_mapWidth, 640);
		FlxG.camera.bounds = FlxG.worldBounds;

		_bg = new FlxSprite(0,0, "assets/images/bg.jpg");
		_bg.scrollFactor.x = 1;

		_cameraFocus = new FlxSprite(0,0,null);

		add(_cameraFocus);
		add(_bg);

		FlxG.mouse.useSystemCursor = true;
		FlxG.camera.follow(_cameraFocus);
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		_cameraFocus.x = FlxG.mouse.x;
		_cameraFocus.y = FlxG.mouse.y;

		
		super.update();
	}	
}