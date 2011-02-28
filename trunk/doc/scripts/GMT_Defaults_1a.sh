#!/bin/bash
#	$Id: GMT_Defaults_1a.sh,v 1.12 2011-02-28 00:58:00 remko Exp $
#
. functions.sh
gmtset BASEMAP_TYPE fancy PLOT_DEGREE_FORMAT ddd:mm:ssF GRID_CROSS_SIZE_PRIMARY 0.1i ANNOT_FONT_SIZE_PRIMARY +8p
psbasemap -X1.5i -R-60/-30/-10/10 -JM2.25i -Ba10f5g5WSne:."Plot Title": -P -K > GMT_Defaults_1a.ps
pstext -R -J -O -K -N << EOF >> GMT_Defaults_1a.ps
-57.5 -14 7 0 1 RT BASEMAP_TYPE
-38 -14 7 0 1 RT ANNOT_OFFSET_PRIMARY
-62 -3 7 0 1 RT TICK_LENGTH
-62 4 7 0 1 RB TICK_PEN
-59 13 7 0 1 RB FRAME_WIDTH
-42.5 12 7 0 1 RB BASEMAP_FRAME_RGB
-49 2.5 7 0 1 LM GRID_CROSS_SIZE_PRIMARY
-30 12 7 0 1 LB HEADER_FONT_SIZE
-30 14 7 0 1 LB HEADER_FONT
-28 -6 7 0 1 LB PLOT_DEGREE_FORMAT
-28 -8 7 0 1 LB DEGREE_SYMBOL
EOF
psxy -R -J -O -Svs0.005i/0.04i/0.03i -N -Gblack << EOF >> GMT_Defaults_1a.ps
-57.3 -14 -55 -10.75
-37.7 -14 -32 -10.75
-28.3 -8 -29.25 -10.25
-28.3 -6 -38 -11
-62 -2.75 -60.75 -0.25
-62 3.75 -60.75 0.75
-60.20 12.75 -60.20 10.4
-30.25 12 -37.5 14
-30.25 14 -37 16
-42.25 12 -37 10.5
-49.5 2.5 -54.5 4.5
EOF
