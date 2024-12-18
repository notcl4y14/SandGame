import cells.Cell;
import cells.CellChunk;
import h2d.Graphics;
import hxd.Window;

class Main extends hxd.App {
	var window : Window;
	var chunk : CellChunk;

	// ==== Init ==== //
	override function init () {
		this.window = Window.getInstance();

		this.window.title = "Sand Game";

		this.chunk = new CellChunk(24, 24);
		this.chunk.setCell(Cell.fromID("sand"), 10, 10);
	}

	// ==== Loop ==== //
	override function update (dt : Float) {
		this.step(dt);
		this.draw();
	}

	private function step (dt : Float) {}

	private function draw () {
		var graphics = new Graphics(this.s2d);
		var scale : Int = 10; // Temporary variable for scaling graphics

		// Clear Screen
		graphics.beginFill(0xf0f0f0);
		graphics.drawRect(0, 0, this.window.width, this.window.height);
		graphics.endFill();

		// Draw chunk background
		graphics.beginFill(0xa0a0a0);
		graphics.drawRect(0, 0, this.chunk.width * scale, this.chunk.height * scale);
		graphics.endFill();

		// Draw game components
		this.chunk.draw(graphics, scale);
	}

	// ==== Main ==== //
	public static function main () {
		new Main();
	}
}