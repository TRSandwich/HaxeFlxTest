package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.input.actions.FlxAction;

class PlayState extends FlxState
{
	var testKey = new FlxActionDigital();
	
	override public function create()
	{
		super.create();

		var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
		text.screenCenter();
		add(text);

		testKey.addKey(SPACE, JUST_PRESSED);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (testKey.check()) FlxG.switchState(new TestState());
	}
}
