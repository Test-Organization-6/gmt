#!/usr/bin/env bash
gmt begin GMT_tut_6
	gmt set GMT_THEME cookbook
	gmt coast -Rg -JKs180/9i -Bag -Dc -A5000 -Gchocolate -SDarkTurquoise -Wthinnest
gmt end show
