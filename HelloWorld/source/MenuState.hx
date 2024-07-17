package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.FlxG;

class MenuState extends FlxState
{
    var btnPlay:FlxButton;
    
    override public function create()
    {
        super.create();

        if (FlxG.sound.music == null)
        {
            FlxG.sound.playMusic(AssetPaths.Bleeping_Demo__mp3, 1, true);
        }
        
        btnPlay = new FlxButton(0, 0, "Play", clickPlay);
        btnPlay.screenCenter();
        add(btnPlay);
    }

    function clickPlay()
    {
        FlxG.switchState(new PlayState());
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}