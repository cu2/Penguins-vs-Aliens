package {
	import org.flixel.*;
	import org.flixel.data.*;
	public class MenuState extends FlxState {
		public var maleTux:FlxSprite;
		public var femaleTux:FlxSprite;
		public var heart:FlxSprite;
    	[Embed(source="data/backgroundmusic.mp3")] public static var BackgroundMusic:Class;
		[Embed(source="data/male_tux.png")] public static var MaleTuxSprite:Class;
		[Embed(source="data/female_tux.png")] public static var FemaleTuxSprite:Class;
		[Embed(source="data/heart.png")] public static var HeartSprite:Class;
		override public function create():void {
			FlxG.playMusic(BackgroundMusic,1);
			bgColor = 0xff80c0ff;
			var t:FlxText;
			t = new FlxText(0,50,FlxG.width,"Penguins vs Aliens");t.setFormat(null,24,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(1,120,FlxG.width,"When Alice and Bob the two penguins were married,\nthe priest gave them the ring of love and said:\nIt's dangerous to go alone! Take this!");t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(1,196,FlxG.width,"Little did they know that they were destined to be heroes...\nUntil the aliens came and attacked Earth.");t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(1,250,FlxG.width,"You can move them with the Arrow keys or WASD,\nand change the distance between them with JK.");t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(0,300,FlxG.width,"And don't forget: love trumps aliens!");t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(0,350,FlxG.width,"Press SPACE to continue.");t.setFormat(null,16,0xffffffff,'center',0xff000000);add(t);
			t = new FlxText(0,480-13,FlxG.width,"Created by Zanda Games");t.setFormat(null,8,0xffffffff,'right',0xff000000);add(t);
			femaleTux = new FlxSprite(137,104,FemaleTuxSprite);add(femaleTux);
			maleTux = new FlxSprite(228,104,MaleTuxSprite);add(maleTux);
			heart = new FlxSprite(325,321,HeartSprite);add(heart);
		}
		override public function update():void {
			if (!FlxG.kong) (FlxG.kong = parent.addChild(new FlxKong()) as FlxKong).init();
			super.update();
			if (FlxG.keys.SPACE) FlxG.state = new PlayState();
			if (FlxG.keys.M) {
				if (FlxG.music.playing) FlxG.music.pause();else FlxG.music.play();
			}
		}
	}
}