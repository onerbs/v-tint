module tint

import strings

struct Tint {
	str &byte
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
	if self.len == 0 {
		return ''
	}

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

	buf << `\e`
	buf << `[`
	buf << `0`
	buf << `m`

	return buf.str()
}

// Foreground

pub fn (self Tint) black() Tint {
	mut tt := self
	tt.fore = 0
	return tt
}

pub fn (self Tint) red() Tint {
	mut tt := self
	tt.fore = 1
	return tt
}

pub fn (self Tint) green() Tint {
	mut tt := self
	tt.fore = 2
	return tt
}

pub fn (self Tint) yellow() Tint {
	mut tt := self
	tt.fore = 3
	return tt
}

pub fn (self Tint) blue() Tint {
	mut tt := self
	tt.fore = 4
	return tt
}

pub fn (self Tint) magenta() Tint {
	mut tt := self
	tt.fore = 5
	return tt
}

pub fn (self Tint) cyan() Tint {
	mut tt := self
	tt.fore = 6
	return tt
}

pub fn (self Tint) white() Tint {
	mut tt := self
	tt.fore = 7
	return tt
}

// Background

pub fn (self Tint) over_black() Tint {
	mut tt := self
	tt.back = 0
	return tt
}

pub fn (self Tint) over_red() Tint {
	mut tt := self
	tt.back = 1
	return tt
}

pub fn (self Tint) over_green() Tint {
	mut tt := self
	tt.back = 2
	return tt
}

pub fn (self Tint) over_yellow() Tint {
	mut tt := self
	tt.back = 3
	return tt
}

pub fn (self Tint) over_blue() Tint {
	mut tt := self
	tt.back = 4
	return tt
}

pub fn (self Tint) over_magenta() Tint {
	mut tt := self
	tt.back = 5
	return tt
}

pub fn (self Tint) over_cyan() Tint {
	mut tt := self
	tt.back = 6
	return tt
}

pub fn (self Tint) over_white() Tint {
	mut tt := self
	tt.back = 7
	return tt
}

// Modes

pub fn (self Tint) bold() Tint {
	mut tt := self
	tt.mode[0] = !self.mode[0]
	return tt
}

pub fn (self Tint) faint() Tint {
	mut tt := self
	tt.mode[1] = !self.mode[1]
	return tt
}

pub fn (self Tint) italic() Tint {
	mut tt := self
	tt.mode[2] = !self.mode[2]
	return tt
}

pub fn (self Tint) underline() Tint {
	mut tt := self
	tt.mode[3] = !self.mode[3]
	return tt
}

pub fn (self Tint) blink() Tint {
	mut tt := self
	tt.mode[4] = !self.mode[4]
	return tt
}

pub fn (self Tint) rapid_blink() Tint {
	mut tt := self
	tt.mode[5] = !self.mode[5]
	return tt
}

pub fn (self Tint) invert() Tint {
	mut tt := self
	tt.mode[6] = !self.mode[6]
	return tt
}

pub fn (self Tint) hide() Tint {
	mut tt := self
	tt.mode[7] = !self.mode[7]
	return tt
}

pub fn (self Tint) strike() Tint {
	mut tt := self
	tt.mode[8] = !self.mode[8]
	return tt
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
