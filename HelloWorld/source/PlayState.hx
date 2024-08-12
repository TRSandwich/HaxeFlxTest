package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.input.actions.FlxAction;

class PlayState extends FlxState
{
	var secretKey = new FlxActionDigital();
	
	override public function create()
	{
		super.create();

		var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
		text.screenCenter();
		add(text);

		secretKey.addKey(SPACE, JUST_PRESSED);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (secretKey.check()) FlxG.switchState(new SecretState());
	}
}
