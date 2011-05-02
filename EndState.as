package {
	import org.flixel.*;
	public class EndState extends FlxState {
		[Embed(source="data/gameover.mp3")] public static var GameoverSound:Class;
		override public function create():void {
			FlxG.play(GameoverSound,0.5);
			bgColor = 0xff80c0ff;
			var t:FlxText;
			t = new FlxText(0,100,FlxG.width,"Game Over");t.setFormat(null,24,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(1,200,FlxG.width,"Score: "+FlxG.score);t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			if (FlxG.kong) FlxG.kong.API.stats.submitArray([{name:"Aliens Killed", value:FlxG.score}]);
			t = new FlxText(0,300,FlxG.width,"Press SPACE to play again.");t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(0,480-13,FlxG.width,"Created by Zanda Games");t.setFormat(null,8,0xffffffff,'right',0xff000000);add(t);
		}
		override public function update():void {
			super.update();
			if (FlxG.keys.SPACE) FlxG.state = new PlayState();
			if (FlxG.keys.M) {
				if (FlxG.music.playing) FlxG.music.pause();else FlxG.music.play();
			}
		}
	}
}