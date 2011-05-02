package {
	import org.flixel.*;
	public class Alien extends FlxSprite {
		[Embed(source="data/neg.mp3")] public static var NegSound:Class;
		protected var AlienSprite:Class;
		[Embed(source="data/aliens/anchor.png")] protected var AlienSprite1:Class;
		[Embed(source="data/aliens/asterisk_orange.png")] protected var AlienSprite2:Class;
		[Embed(source="data/aliens/attach.png")] protected var AlienSprite3:Class;
		[Embed(source="data/aliens/basket.png")] protected var AlienSprite4:Class;
		[Embed(source="data/aliens/bell.png")] protected var AlienSprite5:Class;
		[Embed(source="data/aliens/bin_closed.png")] protected var AlienSprite6:Class;
		[Embed(source="data/aliens/bomb.png")] protected var AlienSprite7:Class;
		[Embed(source="data/aliens/book.png")] protected var AlienSprite8:Class;
		[Embed(source="data/aliens/box.png")] protected var AlienSprite9:Class;
		[Embed(source="data/aliens/bricks.png")] protected var AlienSprite10:Class;
		[Embed(source="data/aliens/briefcase.png")] protected var AlienSprite11:Class;
		[Embed(source="data/aliens/bug.png")] protected var AlienSprite12:Class;
		[Embed(source="data/aliens/cake.png")] protected var AlienSprite13:Class;
		[Embed(source="data/aliens/calculator.png")] protected var AlienSprite14:Class;
		[Embed(source="data/aliens/calendar.png")] protected var AlienSprite15:Class;
		[Embed(source="data/aliens/camera.png")] protected var AlienSprite16:Class;
		[Embed(source="data/aliens/car.png")] protected var AlienSprite17:Class;
		[Embed(source="data/aliens/cart.png")] protected var AlienSprite18:Class;
		[Embed(source="data/aliens/clock.png")] protected var AlienSprite19:Class;
		[Embed(source="data/aliens/cog.png")] protected var AlienSprite20:Class;
		[Embed(source="data/aliens/computer.png")] protected var AlienSprite21:Class;
		[Embed(source="data/aliens/controller.png")] protected var AlienSprite22:Class;
		[Embed(source="data/aliens/cup.png")] protected var AlienSprite23:Class;
		[Embed(source="data/aliens/cut_red.png")] protected var AlienSprite24:Class;
		[Embed(source="data/aliens/drink.png")] protected var AlienSprite25:Class;
		[Embed(source="data/aliens/drink_empty.png")] protected var AlienSprite26:Class;
		[Embed(source="data/aliens/house.png")] protected var AlienSprite27:Class;
		[Embed(source="data/aliens/ipod.png")] protected var AlienSprite28:Class;
		[Embed(source="data/aliens/key.png")] protected var AlienSprite29:Class;
		[Embed(source="data/aliens/lightbulb.png")] protected var AlienSprite30:Class;
		[Embed(source="data/aliens/lightbulb_off.png")] protected var AlienSprite31:Class;
		[Embed(source="data/aliens/lock.png")] protected var AlienSprite32:Class;
		[Embed(source="data/aliens/lock_open.png")] protected var AlienSprite33:Class;
		[Embed(source="data/aliens/lorry.png")] protected var AlienSprite34:Class;
		[Embed(source="data/aliens/newspaper.png")] protected var AlienSprite35:Class;
		[Embed(source="data/aliens/palette.png")] protected var AlienSprite36:Class;
		[Embed(source="data/aliens/phone.png")] protected var AlienSprite37:Class;
		[Embed(source="data/aliens/pill.png")] protected var AlienSprite38:Class;
		[Embed(source="data/aliens/plugin.png")] protected var AlienSprite39:Class;
		[Embed(source="data/aliens/rainbow.png")] protected var AlienSprite40:Class;
		[Embed(source="data/aliens/ruby.png")] protected var AlienSprite41:Class;
		[Embed(source="data/aliens/shield.png")] protected var AlienSprite42:Class;
		[Embed(source="data/aliens/sport_8ball.png")] protected var AlienSprite43:Class;
		[Embed(source="data/aliens/sport_basketball.png")] protected var AlienSprite44:Class;
		[Embed(source="data/aliens/sport_football.png")] protected var AlienSprite45:Class;
		[Embed(source="data/aliens/sport_golf.png")] protected var AlienSprite46:Class;
		[Embed(source="data/aliens/sport_raquet.png")] protected var AlienSprite47:Class;
		[Embed(source="data/aliens/sport_shuttlecock.png")] protected var AlienSprite48:Class;
		[Embed(source="data/aliens/sport_soccer.png")] protected var AlienSprite49:Class;
		[Embed(source="data/aliens/sport_tennis.png")] protected var AlienSprite50:Class;
		[Embed(source="data/aliens/star.png")] protected var AlienSprite51:Class;
		[Embed(source="data/aliens/telephone.png")] protected var AlienSprite52:Class;
		[Embed(source="data/aliens/time.png")] protected var AlienSprite53:Class;
		[Embed(source="data/aliens/transmit.png")] protected var AlienSprite54:Class;
		[Embed(source="data/aliens/user_female.png")] protected var AlienSprite55:Class;
		[Embed(source="data/aliens/user_gray.png")] protected var AlienSprite56:Class;
		[Embed(source="data/aliens/user_green.png")] protected var AlienSprite57:Class;
		[Embed(source="data/aliens/user_orange.png")] protected var AlienSprite58:Class;
		[Embed(source="data/aliens/user_red.png")] protected var AlienSprite59:Class;
		[Embed(source="data/aliens/user_suit.png")] protected var AlienSprite60:Class;
		[Embed(source="data/aliens/weather_sun.png")] protected var AlienSprite61:Class;
		[Embed(source="data/aliens/wrench_orange.png")] protected var AlienSprite62:Class;
		protected static const ALIEN_SPEED:int = 15;
		private var envir:PlayState;
		private var kind:uint = 1;
		public function Alien(Envir:PlayState,X:uint,Y:uint) {
			kind=1+Math.floor(62*Math.random());
			switch(kind) {
				case 1:AlienSprite=AlienSprite1;break;
				case 2:AlienSprite=AlienSprite2;break;
				case 3:AlienSprite=AlienSprite3;break;
				case 4:AlienSprite=AlienSprite4;break;
				case 5:AlienSprite=AlienSprite5;break;
				case 6:AlienSprite=AlienSprite6;break;
				case 7:AlienSprite=AlienSprite7;break;
				case 8:AlienSprite=AlienSprite8;break;
				case 9:AlienSprite=AlienSprite9;break;
				case 10:AlienSprite=AlienSprite10;break;
				case 11:AlienSprite=AlienSprite11;break;
				case 12:AlienSprite=AlienSprite12;break;
				case 13:AlienSprite=AlienSprite13;break;
				case 14:AlienSprite=AlienSprite14;break;
				case 15:AlienSprite=AlienSprite15;break;
				case 16:AlienSprite=AlienSprite16;break;
				case 17:AlienSprite=AlienSprite17;break;
				case 18:AlienSprite=AlienSprite18;break;
				case 19:AlienSprite=AlienSprite19;break;
				case 20:AlienSprite=AlienSprite20;break;
				case 21:AlienSprite=AlienSprite21;break;
				case 22:AlienSprite=AlienSprite22;break;
				case 23:AlienSprite=AlienSprite23;break;
				case 24:AlienSprite=AlienSprite24;break;
				case 25:AlienSprite=AlienSprite25;break;
				case 26:AlienSprite=AlienSprite26;break;
				case 27:AlienSprite=AlienSprite27;break;
				case 28:AlienSprite=AlienSprite28;break;
				case 29:AlienSprite=AlienSprite29;break;
				case 30:AlienSprite=AlienSprite30;break;
				case 31:AlienSprite=AlienSprite31;break;
				case 32:AlienSprite=AlienSprite32;break;
				case 33:AlienSprite=AlienSprite33;break;
				case 34:AlienSprite=AlienSprite34;break;
				case 35:AlienSprite=AlienSprite35;break;
				case 36:AlienSprite=AlienSprite36;break;
				case 37:AlienSprite=AlienSprite37;break;
				case 38:AlienSprite=AlienSprite38;break;
				case 39:AlienSprite=AlienSprite39;break;
				case 40:AlienSprite=AlienSprite40;break;
				case 41:AlienSprite=AlienSprite41;break;
				case 42:AlienSprite=AlienSprite42;break;
				case 43:AlienSprite=AlienSprite43;break;
				case 44:AlienSprite=AlienSprite44;break;
				case 45:AlienSprite=AlienSprite45;break;
				case 46:AlienSprite=AlienSprite46;break;
				case 47:AlienSprite=AlienSprite47;break;
				case 48:AlienSprite=AlienSprite48;break;
				case 49:AlienSprite=AlienSprite49;break;
				case 50:AlienSprite=AlienSprite50;break;
				case 51:AlienSprite=AlienSprite51;break;
				case 52:AlienSprite=AlienSprite52;break;
				case 53:AlienSprite=AlienSprite53;break;
				case 54:AlienSprite=AlienSprite54;break;
				case 55:AlienSprite=AlienSprite55;break;
				case 56:AlienSprite=AlienSprite56;break;
				case 57:AlienSprite=AlienSprite57;break;
				case 58:AlienSprite=AlienSprite58;break;
				case 59:AlienSprite=AlienSprite59;break;
				case 60:AlienSprite=AlienSprite60;break;
				case 61:AlienSprite=AlienSprite61;break;
				case 62:AlienSprite=AlienSprite62;break;
			}
			super(X,Y,AlienSprite);
			facing=0;
			envir=Envir;
		}
		public override function update():void {
			velocity.x=0;
			velocity.y=40+envir.aliensKilled/80+(envir.aliensKilled/40)*kind;
			if (y>470) {
				if (envir.soundEffectPlaying<=0) {
					envir.soundEffectPlaying=0.25;
					FlxG.play(NegSound);
				}
				envir.lives--;
				envir.aliens.remove(this,true);
				envir.defaultGroup.remove(this,true);
				if (envir.lives<=0) {
					FlxG.score=envir.aliensKilled;
					FlxG.state = new EndState();
				}
			}
			super.update();
		}
	}
}