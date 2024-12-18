package cells;

class Cell {
	public var ID : String;
	public var color : Int;
	public var shouldDraw : Bool;
	public var shouldUpdate : Bool;

	public function new () {
		this.ID = "unknown";
		this.color = 0x000000;

		this.shouldDraw = true;
		this.shouldUpdate = true;
	}

	// TODO: Make a separate class for handling this stuff
	public static function fromID (id : String) : Cell {
		switch (id) {
			case "air":
				var cell = new Cell();
				cell.ID = id;
				cell.shouldDraw = false;
				cell.shouldUpdate = false;
				return cell;
			
			case "sand":
				var cell = new Cell();
				cell.ID = id;
				cell.color = 0xF4DC7F;
				return cell;
			
			default:
				return null;
		}
	}
}