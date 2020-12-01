module tint

struct Tint {
mut:
	raw   string
	color Color
}

pub fn tint(text string) Tint {
	return Tint{
		color: color()
		raw: text
	}
}

pub fn (this Tint) str() string {
	return '\x1b[${this.color}m${this.raw}\x1b[m'
}

// Foreground
pub fn black(text string) Tint {
	return tint(text).black()
}

pub fn red(text string) Tint {
	return tint(text).red()
}

pub fn green(text string) Tint {
	return tint(text).green()
}

pub fn yellow(text string) Tint {
	return tint(text).yellow()
}

pub fn blue(text string) Tint {
	return tint(text).blue()
}

pub fn magenta(text string) Tint {
	return tint(text).magenta()
}

pub fn cyan(text string) Tint {
	return tint(text).cyan()
}

pub fn white(text string) Tint {
	return tint(text).white()
}

// Background
pub fn over_black(text string) Tint {
	return tint(text).over_black()
}

pub fn over_red(text string) Tint {
	return tint(text).over_red()
}

pub fn over_green(text string) Tint {
	return tint(text).over_green()
}

pub fn over_yellow(text string) Tint {
	return tint(text).over_yellow()
}

pub fn over_blue(text string) Tint {
	return tint(text).over_blue()
}

pub fn over_magenta(text string) Tint {
	return tint(text).over_magenta()
}

pub fn over_cyan(text string) Tint {
	return tint(text).over_cyan()
}

pub fn over_white(text string) Tint {
	return tint(text).over_white()
}

// Modes
pub fn bold(text string) Tint {
	return tint(text).bold()
}

pub fn faint(text string) Tint {
	return tint(text).faint()
}

pub fn italic(text string) Tint {
	return tint(text).italic()
}

pub fn underline(text string) Tint {
	return tint(text).underline()
}

pub fn blink(text string) Tint {
	return tint(text).blink()
}

pub fn rapid_blink(text string) Tint {
	return tint(text).rapid_blink()
}

pub fn invert(text string) Tint {
	return tint(text).invert()
}

pub fn hide(text string) Tint {
	return tint(text).hide()
}

pub fn strike(text string) Tint {
	return tint(text).strike()
}

// Foreground
pub fn (this Tint) black() Tint {
	mut self := this
	self.color.fore.black()
	return self
}

pub fn (this Tint) red() Tint {
	mut self := this
	self.color.fore.red()
	return self
}

pub fn (this Tint) green() Tint {
	mut self := this
	self.color.fore.green()
	return self
}

pub fn (this Tint) yellow() Tint {
	mut self := this
	self.color.fore.yellow()
	return self
}

pub fn (this Tint) blue() Tint {
	mut self := this
	self.color.fore.blue()
	return self
}

pub fn (this Tint) magenta() Tint {
	mut self := this
	self.color.fore.magenta()
	return self
}

pub fn (this Tint) cyan() Tint {
	mut self := this
	self.color.fore.cyan()
	return self
}

pub fn (this Tint) white() Tint {
	mut self := this
	self.color.fore.white()
	return self
}

// Background
pub fn (this Tint) over_black() Tint {
	mut self := this
	self.color.back.black()
	return self
}

pub fn (this Tint) over_red() Tint {
	mut self := this
	self.color.back.red()
	return self
}

pub fn (this Tint) over_green() Tint {
	mut self := this
	self.color.back.green()
	return self
}

pub fn (this Tint) over_yellow() Tint {
	mut self := this
	self.color.back.yellow()
	return self
}

pub fn (this Tint) over_blue() Tint {
	mut self := this
	self.color.back.blue()
	return self
}

pub fn (this Tint) over_magenta() Tint {
	mut self := this
	self.color.back.magenta()
	return self
}

pub fn (this Tint) over_cyan() Tint {
	mut self := this
	self.color.back.cyan()
	return self
}

pub fn (this Tint) over_white() Tint {
	mut self := this
	self.color.back.white()
	return self
}

// Modes
pub fn (this Tint) bold() Tint {
	mut self := this
	self.color.bold()
	return self
}

pub fn (this Tint) faint() Tint {
	mut self := this
	self.color.faint()
	return self
}

pub fn (this Tint) italic() Tint {
	mut self := this
	self.color.italic()
	return self
}

pub fn (this Tint) underline() Tint {
	mut self := this
	self.color.underline()
	return self
}

pub fn (this Tint) blink() Tint {
	mut self := this
	self.color.blink()
	return self
}

pub fn (this Tint) rapid_blink() Tint {
	mut self := this
	self.color.rapid_blink()
	return self
}

pub fn (this Tint) invert() Tint {
	mut self := this
	self.color.invert()
	return self
}

pub fn (this Tint) hide() Tint {
	mut self := this
	self.color.hide()
	return self
}

pub fn (this Tint) strike() Tint {
	mut self := this
	self.color.strike()
	return self
}
