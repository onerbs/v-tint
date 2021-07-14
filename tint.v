module tint

import strings

[heap]
struct Tint {
	str &byte = 0
	len int
mut:
	fore byte   = 9
	back byte   = 9
	mode []bool = []bool{len: 9}
}

fn tint(s string) Tint {
	return Tint{
		str: s.str
		len: s.len
	}
}

pub fn (self Tint) str() string {
	mut buf := strings.new_builder(self.len + 0x20)

	buf << `\e`
	buf << `[`

	for i in 0 .. self.mode.len {
		if self.mode[i] {
			buf.write_b(i + `1`)
			buf << `;`
		}
	}
	if self.fore < 8 {
		buf << `3`
		buf.write_b(self.fore + `0`)
		buf << `;`
	}
	if self.back < 8 {
		buf << `4`
		buf.write_b(self.back + `0`)
		buf << `;`
	}
	if buf.len > 0 {
		buf.go_back(1)
	}

	if buf.len == 2 {
		buf.trim(0)
	} else {
		buf << `m`
	}

	unsafe { buf.write_ptr(self.str, self.len) }

	if buf.len > self.len {
		buf << `\e`
		buf << `[`
		buf << `0`
		buf << `m`
	}

	return buf.str()
}

// Foreground

pub fn (mut self Tint) black() Tint {
	self.fore = 0
	return self
}

pub fn (mut self Tint) red() Tint {
	self.fore = 1
	return self
}

pub fn (mut self Tint) green() Tint {
	self.fore = 2
	return self
}

pub fn (mut self Tint) yellow() Tint {
	self.fore = 3
	return self
}

pub fn (mut self Tint) blue() Tint {
	self.fore = 4
	return self
}

pub fn (mut self Tint) magenta() Tint {
	self.fore = 5
	return self
}

pub fn (mut self Tint) cyan() Tint {
	self.fore = 6
	return self
}

pub fn (mut self Tint) white() Tint {
	self.fore = 7
	return self
}

// Background

pub fn (mut self Tint) over_black() Tint {
	self.back = 0
	return self
}

pub fn (mut self Tint) over_red() Tint {
	self.back = 1
	return self
}

pub fn (mut self Tint) over_green() Tint {
	self.back = 2
	return self
}

pub fn (mut self Tint) over_yellow() Tint {
	self.back = 3
	return self
}

pub fn (mut self Tint) over_blue() Tint {
	self.back = 4
	return self
}

pub fn (mut self Tint) over_magenta() Tint {
	self.back = 5
	return self
}

pub fn (mut self Tint) over_cyan() Tint {
	self.back = 6
	return self
}

pub fn (mut self Tint) over_white() Tint {
	self.back = 7
	return self
}

// Modes

pub fn (mut self Tint) bold() Tint {
	self.mode[0] = !self.mode[0]
	return self
}

pub fn (mut self Tint) faint() Tint {
	self.mode[1] = !self.mode[1]
	return self
}

pub fn (mut self Tint) italic() Tint {
	self.mode[2] = !self.mode[2]
	return self
}

pub fn (mut self Tint) underline() Tint {
	self.mode[3] = !self.mode[3]
	return self
}

pub fn (mut self Tint) blink() Tint {
	self.mode[4] = !self.mode[4]
	return self
}

pub fn (mut self Tint) rapid_blink() Tint {
	self.mode[5] = !self.mode[5]
	return self
}

pub fn (mut self Tint) invert() Tint {
	self.mode[6] = !self.mode[6]
	return self
}

pub fn (mut self Tint) hide() Tint {
	self.mode[7] = !self.mode[7]
	return self
}

pub fn (mut self Tint) strike() Tint {
	self.mode[8] = !self.mode[8]
	return self
}

// Foreground

pub fn black(s string) Tint {
	return tint(s).black()
}

pub fn red(s string) Tint {
	return tint(s).red()
}

pub fn green(s string) Tint {
	return tint(s).green()
}

pub fn yellow(s string) Tint {
	return tint(s).yellow()
}

pub fn blue(s string) Tint {
	return tint(s).blue()
}

pub fn magenta(s string) Tint {
	return tint(s).magenta()
}

pub fn cyan(s string) Tint {
	return tint(s).cyan()
}

pub fn white(s string) Tint {
	return tint(s).white()
}

// Background

pub fn over_black(s string) Tint {
	return tint(s).over_black()
}

pub fn over_red(s string) Tint {
	return tint(s).over_red()
}

pub fn over_green(s string) Tint {
	return tint(s).over_green()
}

pub fn over_yellow(s string) Tint {
	return tint(s).over_yellow()
}

pub fn over_blue(s string) Tint {
	return tint(s).over_blue()
}

pub fn over_magenta(s string) Tint {
	return tint(s).over_magenta()
}

pub fn over_cyan(s string) Tint {
	return tint(s).over_cyan()
}

pub fn over_white(s string) Tint {
	return tint(s).over_white()
}

// Modes

pub fn bold(s string) Tint {
	return tint(s).bold()
}

pub fn faint(s string) Tint {
	return tint(s).faint()
}

pub fn italic(s string) Tint {
	return tint(s).italic()
}

pub fn underline(s string) Tint {
	return tint(s).underline()
}

pub fn blink(s string) Tint {
	return tint(s).blink()
}

pub fn rapid_blink(s string) Tint {
	return tint(s).rapid_blink()
}

pub fn invert(s string) Tint {
	return tint(s).invert()
}

pub fn hide(s string) Tint {
	return tint(s).hide()
}

pub fn strike(s string) Tint {
	return tint(s).strike()
}
