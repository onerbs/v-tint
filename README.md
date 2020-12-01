# Tint

Colorize your terminal output *!*

The available colors are:

	black
	red
	green
	yellow
	blue
	magenta
	cyan
	white

> any color can be prefixed with `over_` to colorize the background

The available modes are:

	bold
	faint
	italic
	underline
	blink
	rapid_blink
	invert
	hide
	strike

## Usage

> always `import tint`

Print a bold red text over yellow:

``` v
println(tint.red('text').over_yellow().bold())
println(tint.over_yellow('text').bold().red())
println(tint.bold('text').red().over_yellow())
```

> The order does not matter, all of the above will produce the same result.
