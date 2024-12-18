package cells;

import h2d.Graphics;

class CellChunk {
	public var data : Array<Cell>;
	public var width : Int;
	public var height : Int;
	public var area : Int;

	public function new (width : Int, height : Int) {
		this.data = [];
		this.width = width;
		this.height = height;
		this.area = this.width * this.height;

		// Fill the whole area with air
		for (i in 0...this.area)
			this.data.push(Cell.fromID("air"));
	}

	// ==== Chunk Data ==== //
	public function setCell (cell : Cell, x : Int, y : Int) {
		if (x < 0 || x >= this.width) {
			return;
		} else if (y < 0 || y >= this.height) {
			return;
		}

		this.data[y * this.width + x] = cell;
	}

	public function getCell (x : Int, y : Int) : Cell {
		if (x < 0 || x >= this.width) {
			return null;
		} else if (y < 0 || y >= this.height) {
			return null;
		}

		return this.data[y * this.width + x];
	}

	// ==== Update/Draw ==== //
	public function update () {}

	public function draw (graphics : Graphics, scale : Int) {
		for (i in 0...this.area) {
			var cell = this.data[i];

			if (!cell.shouldDraw)
				continue;
			
			var x : Int = i % this.width;
			var y : Int = Math.floor(i / this.width);

			graphics.beginFill(cell.color);
			graphics.drawRect(x * scale, y * scale, scale, scale);
		}
	}
}