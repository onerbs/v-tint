module tint

struct Value {
	tent byte
mut:
	unit byte
}

fn value(tent byte, unit byte) Value {
	return Value{
		tent: tent
		unit: unit
	}
}

fn (this Value) is_valid() bool {
	return this.unit < 8
}

fn (this Value) str() string {
	return '${this.tent + this.unit}'
}

fn (mut this Value) black() {
	this.unit = 0
}

fn (mut this Value) red() {
	this.unit = 1
}

fn (mut this Value) green() {
	this.unit = 2
}

fn (mut this Value) yellow() {
	this.unit = 3
}

fn (mut this Value) blue() {
	this.unit = 4
}

fn (mut this Value) magenta() {
	this.unit = 5
}

fn (mut this Value) cyan() {
	this.unit = 6
}

fn (mut this Value) white() {
	this.unit = 7
}
