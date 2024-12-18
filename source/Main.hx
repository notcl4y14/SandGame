import hxd.Window;

class Main extends hxd.App {
	var window : Window;

	// ==== Init ==== //
	override function init () {
		window = Window.getInstance();

		window.title = "Sand Game";
	}

	// ==== Main ==== //
	static function main () {
		new Main();
	}
}