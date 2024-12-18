import h2d.Graphics;
import hxd.Window;

class Main extends hxd.App {
	var window : Window;

	// ==== Init ==== //
	override function init () {
		this.window = Window.getInstance();

		this.window.title = "Sand Game";
	}

	// ==== Loop ==== //
	override function update (dt : Float) {
		this.step(dt);
		this.draw();
	}

	private function step (dt : Float) {}

	private function draw () {
		var graphics = new Graphics(this.s2d);

		// Clear Screen
		graphics.beginFill(0xf0f0f0);
		graphics.drawRect(0, 0, this.window.width, this.window.height);
		graphics.endFill();
	}

	// ==== Main ==== //
	public static function main () {
		new Main();
	}
}