module tint

struct Color {
mut:
	fore  Value
	back  Value
	modes []bool
}

fn color() Color {
	return Color{
		fore: value(30, 9)
		back: value(40, 9)
		modes: []bool{len: 9}
	}
}

fn (this Color) str() string {
	mut parts := []string{}
	for i in 0 .. this.modes.len {
		if this.modes[i] {
			parts << '${i + 1}'
		}
	}
	if this.fore.is_valid() {
		parts << '$this.fore'
	}
	if this.back.is_valid() {
		parts << '$this.back'
	}
	return parts.join(';')
}

fn (mut this Color) toggle_mode(mode int) {
	this.modes[mode] = !this.modes[mode]
}

fn (mut this Color) bold() {
	this.toggle_mode(0)
}

fn (mut this Color) faint() {
	this.toggle_mode(1)
}

fn (mut this Color) italic() {
	this.toggle_mode(2)
}

fn (mut this Color) underline() {
	this.toggle_mode(3)
}

fn (mut this Color) blink() {
	this.toggle_mode(4)
}

fn (mut this Color) rapid_blink() {
	this.toggle_mode(5)
}

fn (mut this Color) invert() {
	this.toggle_mode(6)
}

fn (mut this Color) hide() {
	this.toggle_mode(7)
}

fn (mut this Color) strike() {
	this.toggle_mode(8)
}
