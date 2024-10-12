package;

import flixel.FlxState;

class SecretState extends FlxState
{
    override public function create()
    {
        super.create();

        var testtext = new flixel.text.FlxText(0, 0, 0, "SECRET THING", 64);
        testtext.screenCenter();
        add(testtext);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}